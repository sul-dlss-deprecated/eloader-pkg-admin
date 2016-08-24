# frozen_string_literal: true
###
#  Class to connect to the VND_PACKAGES table
###
class Package < ActiveRecord::Base
  self.table_name = 'vnd_packages'
  self.primary_key = 'record_id'
end
