# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create one record
artist = Artist.create!(first_name: 'Daniel', last_name: 'Egon', birthday: Date.parse('20.10.1986'), category: 0)
manufacturer = Manufacturer.create!(name: 'Johan König', location: 'Düsseldorf')
item = Item.create!(artist_id: artist.id, manufacturer_id: manufacturer.id, titel: 'Cool', size: '23x50',
                    material: 'gold', made_at: '2016', edition: 1, provenance: [['test', 'me'], ['and', 'see']])
Comment.create!(item_id: item.id, text: 'This is a comment')
Reference.create!(item_id: item.id, text: 'This is a reference')
Task.create!(item_id: item.id, titel: 'Important task titel', content: 'Task content: Do this in that way, NOW!!!')
