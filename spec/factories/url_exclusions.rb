# frozen_string_literal: true
FactoryGirl.define do
  factory :url_exclusion do |f|
    f.id '1'
    f.url_substring 'test url string'
  end
end
