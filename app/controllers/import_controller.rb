require 'nokogiri'

class ImportController < ApplicationController
  def new; end

  def create
    file = params[:import_file]
    doc = Nokogiri::XML(file.read)

    rows = doc.css('tr')
    items = parse_rows(rows)
    raise
  end

  private

  def parse_rows(rows)
    rows.map do |row|
      columns = row.children
      image_url = columns.first.at_css("img")["src"] unless columns.first.at_css("img").nil?
      {
        image_url:,
        artist: columns[1].text,
        categroy: columns[2].text,
        titel: columns[3].text,
        made_at: columns[4].text,
        material: columns[5].text,
        size: columns[6].text,
        sammlung: columns[7].text,
        manufacturer: columns[8].text,
        edition: columns[9].text.to_i,
        comments: columns[10].text,
        references: columns[11].text,
        tasks: columns[12].text,
      }
    end
  end
end
