FactoryBot.define do
  factory :race do
    name { "MyString" }
    description { "MyText" }
    info { "MyText" }
    category { nil }
    user { nil }
  end
end
