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
AuthorizedUser.create!(sunet_id: 'dlrueda', name: 'Darsi Rueda')

UrlExclusion.delete_all
UrlExclusion.create!(id: 1, url_substring: 'some.test.url/exclusion')
UrlExclusion.create!(id: 2, url_substring: 'some.other.test.url/exclusion')

Package.delete_all
Package.create!(
package_name: 'Some package name',
vendor_name: 'Some vnd name',
data_pickup_type: 'something',
package_status: 'Active'
)
Package.create!(
package_name: 'Some other package name',
vendor_name: 'Some other vnd name',
data_pickup_type: 'some other thing',
package_status: 'Inactive'
)
