FactoryBot.define do
  factory :animal do
    name { "MyString" }
    birthdate { "2019-06-17" }
    animal_type { "MyString" }
    animal_race { "MyString" }
    size { "MyString" }
    gender { "MyString" }
    vacined { false }
    castred { false }
    vermifuged { false }
    chiped { false }
    description { "MyText" }
    user { nil }
  end
end
