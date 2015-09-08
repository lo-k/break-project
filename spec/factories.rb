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

end