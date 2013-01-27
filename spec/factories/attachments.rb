# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attachment do
    post nil
    file "MyString"
    url "MyString"
  end
end
