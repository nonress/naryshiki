FactoryBot.define do
  factory :user do
    name {'enui'}
    coname {'nonress'}
    sequence(:email) {|n| "enui#{n}@naryshiki.com"}
    password {'hogehoge'}
    activated { false }
    activated_at { Time.zone.now }
    admin { true }
  end
end
