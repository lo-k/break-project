FactoryGirl.define do

  factory :user do
    name 'Sarah'
    email 'sarah@email.com'
    password 'hello'
    password_confirmation 'hello'
  end

  factory :city_list do
    city 'Seattle'
    user_id '1'
  end

  factory :list_item do
    title 'See the Fremont Troll'
    address '123 Troll St.'
    complete false
    favorite false
    city_list_id 1
  end

end