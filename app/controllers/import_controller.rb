require 'nokogiri'
require 'base64'
require 'stringio'

class ImportController < ApplicationController
  def create
    file = params[:import_file]
    return if file.nil?

    doc = Nokogiri::XML(file.read)

    rows = doc.css('tr')
    items = parse_rows(rows)
    create_records(items)
    redirect_to items_path, notice: 'Erfolgreich Daten importiert'
  end

  private

  def parse_rows(rows)
    rows.map do |row|
      columns = row.children
      image_url = columns.first.at_css("img")["src"] unless columns.first.at_css("img").nil?
      {
        image_url:,
        artist: columns[1].text,
        category: columns[2].text,
        titel: columns[3].text,
        made_at: columns[4].text,
        material: columns[5].text,
        size: columns[6].text,
        provenance: columns[7].text,
        manufacturer: columns[8].text,
        edition: columns[9].text,
        comments: columns[10].text,
        references: columns[11].text,
        tasks: columns[12].text
      }
    end
  end

  def create_records(items)
    items.each do |item|
      artist_id = create_artits(item[:artist])
      # Manufacturer? Search for manufacturer in DB, add if exists otherwise nil

      new_item = create_item(item, artist_id)

      # comments, references, tasks
      Comment.create(text: item[:comments], item_id: new_item.id) unless item[:comments].blank?
      Reference.create(text: item[:references], item_id: new_item.id) unless item[:references].blank?
      Task.create(titel: item[:tasks], item_id: new_item.id) unless item[:tasks].blank?
      Provenance.create(text: item[:provenance], item_id: new_item.id) unless item[:provenance].blank?

      # photo
      next unless item[:image_url]

      add_image(item[:image_url], new_item)
    end
  end

  def create_artits(string)
    last_name = string.scan(/^[a-zA-ZäöüÄÖÜß]+/).first
    first_name = string.scan(/,\s*.*(?=\()/).first&.gsub(/[^a-zA-ZöäüÖÄÜß\s]/, '')&.strip

    # check if artist exists in DB and return id, otherwise extract lifedates, create it and return id
    artist = Artist.find_by(first_name:, last_name:)
    return artist.id unless artist.nil?

    date_string = string.scan(/\d+/)
    birthday = date_string.first
    deathday = date_string.last if date_string.length > 1

    artist = Artist.create(first_name:, last_name:, birthday:, deathday:)
    artist.id
  end

  def create_item(item, artist_id)
    Item.create(
      artist_id:,
      category: item[:category],
      titel: item[:titel],
      made_at: item[:made_at],
      material: item[:material],
      size: item[:size],
      edition: item[:edition]
    )
  end

  def add_image(image_url, new_item)
    # decode the base64-encoded string to a binary string
    binary_string = Base64.decode64(image_url.split(',')[1])
    # create an IO object from the binary string
    io = StringIO.new(binary_string)
    # attach the IO object to the item's photos
    new_item.photos.attach(io:, filename: "photo.jpg", content_type: "image/jpeg")
  end
end
