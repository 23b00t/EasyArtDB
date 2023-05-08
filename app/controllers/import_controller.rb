require 'nokogiri'

class ImportController < ApplicationController
  def new; end

  def create
    file = params[:import_file]
    doc = Nokogiri::XML(file.read)

    rows = doc.css('tr')
    items = parse_rows(rows)
    create_records(items)
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
        edition: columns[9].text.to_i,
        comments: columns[10].text,
        references: columns[11].text,
        tasks: columns[12].text
      }
    end
  end

  def create_records(items)
    items.each do |item|
      artist_id = create_artits(item[:artist])

      # Manufacturer?
      new_item = Item.create(
        artist_id:,
        categroy: item[:category],
        titel: item[:titel],
        made_at: item[:made_at],
        material: item[:material],
        size: item[:size],
        # edition?
        provenance: [item[:provenance]]
      )

      # comments, references, tasks
      Comment.create(text: item[:comments], item: new_item)
      Reference.create(text: item[:references], item: new_item)
      Task.create(titel: item[:tasks], item: new_item)

      # photo
      # download the photo from the URL and create an ActiveStorage blob
      blob = ActiveStorage::Downloader.download(item[:image_url])
      # attach the blob to the item's photos
      new_item.photos.create_after_upload!(io: blob.download, filename: "photo.jpg", content_type: "image/jpeg")
    end
  end

  def create_artits(string)
    last_name = string.scan(/^\w+/).first
    first_name = string.scan(/,\s*.*(?=\()/).first.gsub(/[^a-zA-ZöäüÖÄÜ\s]/, '').strip

    # check if artist exists in DB and return id, otherwise extract lifedates, create it and return id
    artist = Artist.find_by(first_name:, last_name:)
    return artist.id unless artits.nil?

    date_string = string.scan(/\d+/)
    birthday = Date.parse("#{date_string.first}-01-01")
    deathday = Date.parse("#{date_string.last}-01-01") if date_string.length > 1

    artist = Artist.create(first_name:, last_name:, birthday:, deathday:)
    artist.id
  end
end
