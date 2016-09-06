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
AuthorizedUser.create!(sunet_id: 'butch', name: 'Butch Anton')
AuthorizedUser.create!(sunet_id: 'guest', name: 'Guest User')

UrlExclusion.delete_all
UrlExclusion.create!(id: 1, url_substring: 'proxy')
UrlExclusion.create!(id: 2, url_substring: 'encompass.library.cornell.edu')
UrlExclusion.create!(id: 3, url_substring: 'umn.edu')
UrlExclusion.create!(id: 4, url_substring: 'e-streams.com')
UrlExclusion.create!(id: 5, url_substring: 'public.eblib.com')
UrlExclusion.create!(id: 6, url_substring: 'acces-distant.upmc.fr')
UrlExclusion.create!(id: 7, url_substring: 'helicon.vuw.ac.nz')
UrlExclusion.create!(id: 8, url_substring: 'contentreserve.com')

Package.delete_all
Package.create!(
package_id: 'ws',
package_name: 'World Scientific eBooks',
package_status: 'Active',
vendor_name: 'World Scientific Publishing',
data_pickup_type: 'AFS',
afs_path: 'WorldScientific',
ftp_list_type: '1',
package_url: 'https://consul.stanford.edu/x/JQCMB',
holding_code: 'SUL-INT-H',
comments: 'spreadsheet records: merge only and match to 020',
url_field: '856',
vendor_id_read: '001',
vendor_id_write: '001',
access_note: 'YES',
export_note: 'YES',
junktag_file: 'junktag.eload_WorldScientific',
encoding_level: 'ASIS',
vnd_catcode: 'World Scientific Publishing',
match_opts: '020,776_isbn',
proc_type: 'newmerge',
update_040: 'YES',
date_cat: 'TODAY',
export_auth: 'WEEKLY',
preprocess_modify_script: '/s/SUL/Bin/Eloader/WorldScientific/modify_worldscientific.pl'
)
Package.create!(
package_id: 'll',
package_name: 'Latino Literature',
package_status: 'Inactive',
vendor_name: 'Alexander Street Press',
data_pickup_type: 'AFS',
afs_path: 'LatinoLit',
ftp_list_type: '1',
package_url: 'https://consul.stanford.edu/x/2AhnBw',
holding_code: 'SUL-INT-H',
url_field: '856',
vendor_id_read: '001',
vendor_id_write: '001',
access_note: 'YES',
export_note: 'YES',
junktag_file: 'junktag.eload_LALI',
encoding_level: 'ASIS',
vnd_catcode: 'VaAlASP',
match_opts: '020,776_isbn',
proc_type: 'newmerge',
update_040: 'YES',
access_urls_plats: '"aspresolver	Latino Literature	Alexander Street Press	Latino Literature	purchased|"',
date_cat: 'TODAY',
export_auth: 'WEEKLY'
)
