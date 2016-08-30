###
# User for authentication and authorization
###
class AuthorizedUsers < ActiveRecord::Base
  self.table_name = 'authorized_users'
end
