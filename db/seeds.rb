# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# clear DB
p 'Clear DB'
Item.destroy_all
Artist.destroy_all
Manufacturer.destroy_all

# Create Artist and Manufacturer
p 'Create one Artist and one Manufacturer'
artist = Artist.create!(first_name: 'Daniel', last_name: 'Egon', birthday: Date.parse('20.10.1986'), category: 0)
manufacturer = Manufacturer.create!(name: 'Johan König', location: 'Düsseldorf')

# Create record one
p 'Create Item one'
item = Item.create!(artist_id: artist.id, manufacturer_id: manufacturer.id, titel: 'Cool', size: '23x50',
                    material: 'gold', made_at: '2016', edition: 1, provenance: [['test', 'me'], ['and', 'see']])

Comment.create!(item_id: item.id, text: 'This is a comment')
Comment.create!(item_id: item.id, text: 'This is a second comment')

Reference.create!(item_id: item.id, text: 'This is a reference')
Reference.create!(item_id: item.id, text: 'This is a second reference')

Task.create!(item_id: item.id, titel: 'Important task titel', content: 'Task content: Do this in that way, NOW!!!')
Task.create!(item_id: item.id, titel: 'Important task titel two', content: 'Task content: Do this, YESTERDAY!!!')

# Create record two
p 'Create Item two'
item1 = Item.create!(artist_id: artist.id, manufacturer_id: manufacturer.id, titel: 'Impressive Item', size: '5x14x23',
                     material: 'silver', made_at: '1990', edition: 100, provenance: ['from', 'here'])

Comment.create!(item_id: item1.id, text: 'This is a comment for Impressive Item')
Comment.create!(item_id: item1.id, text: 'This is a second comment Impressive Item')

Reference.create!(item_id: item1.id, text: 'This is a reference Impressive Item')
Reference.create!(item_id: item1.id, text: 'This is a second reference Impressive Item')

Task.create!(item_id: item1.id, titel: 'Important task titel Impressive Item', content: 'Task content: NOW!!!')
Task.create!(item_id: item1.id, titel: 'Important task titel two Impressive Item', content: 'Task content: YESTERDAY!!')

p 'Success'
