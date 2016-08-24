FactoryGirl.define do
  factory :authorized_users do |f|
    f.sunet_id 'testuser'
    f.name 'Test User'
  end
end
