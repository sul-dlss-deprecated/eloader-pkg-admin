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
AuthorizedUsers.create!(sunet_id: 'dlrueda', name: 'Darsi Rueda')

UrlExclusion.delete_all
UrlExclusion.create!(url_substring: 'some.test.url/exclusion')
UrlExclusion.create!(url_substring: 'some.other.test.url/exclusion')

Package.delete_all
Package.create!(
package_name: 'Some package name',
vendor_name: 'Some vnd name',
data_pickup_type: 'something'
)
Package.create!(
package_name: 'Some other package name',
vendor_name: 'Some other vnd name',
data_pickup_type: 'some other thing'
)
