# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :room do
    roomDescription ""
    rateCode "MyString"
    roomTypeCode "MyString"
    hotel_id 1
  end
end
