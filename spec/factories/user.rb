FactoryGirl.define do 
  factory :user do

    id 1
    first_name "Brendan"
    last_name "White"
    username "aggro_control"
    email "eggrollcontrol@gmail.com"
    encrypted_password "asdasd"
    sign_in_count 1

    
  end
end