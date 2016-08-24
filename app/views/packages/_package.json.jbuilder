# frozen_string_literal: true
json.extract! package, :id, :created_at, :updated_at
json.url package_url(package, format: :json)
