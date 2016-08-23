# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AuthorizedUser.delete_all
AuthorizedUser.create!(sunet_id: 'jgreben', name: 'Josh Greben')
AuthorizedUser.create!(sunet_id: 'sdoljack', name: 'Shelley Doljack')
AuthorizedUser.create!(sunet_id: 'dlrueda', name: 'Daaaaaarsi!')
