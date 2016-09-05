FactoryGirl.define do
  factory :authorized_user do |f|
    f.sunet_id 'testuser'
    f.name 'Test User'
  end
end
