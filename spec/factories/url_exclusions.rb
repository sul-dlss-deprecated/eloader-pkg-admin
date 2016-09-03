# frozen_string_literal: true
FactoryGirl.define do
  factory :url_exclusion do |f|
    f.url_substring 'test url string'
  end
end
