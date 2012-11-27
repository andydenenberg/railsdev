# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyText"
    body "MyText"
    category 1
    user nil
  end
end
