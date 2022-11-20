FactoryBot.define do
  factory :user do

    sequence(:email) { |n| "email#{n}@example.com"}
    sequence(:username) { |n| "name#{n}"}
    password {'123456'}
    # role { 0 }

  end
end