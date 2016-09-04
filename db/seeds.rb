# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AuthorizedUsers.delete_all
AuthorizedUsers.create!(sunet_id: 'jgreben', name: 'Josh Greben')
AuthorizedUsers.create!(sunet_id: 'sdoljack', name: 'Shelley Doljack')
AuthorizedUsers.create!(sunet_id: 'dlrueda', name: 'Daaaaaarsi!')

UrlExclusion.delete_all
UrlExclusion.create!(url_substring: 'some.test.url/exclusion')
UrlExclusion.create!(url_substring: 'some.other.test.url/exclusion')
