FactoryGirl.define do
  factory :order do
    sequence :number do |n|
      "Order #{n}"
    end

    sequence :email do |n|
      "email-#{n}@gmail.com"
    end

    sequence :first_name do |n|
      "Customer #{n}"
    end

    last_name "MyString"

    shopify_order_id {rand(100000)}
    order_date "2013-11-05 02:02:56"
    total 1.5
    line_item_count 1
    financial_status "paid"
  end
end

# FactoryGirl.define do
#   factory :order do
#     number "MyString"
#     email "MyString"
#     first_name "MyString"
#     last_name "MyString"
#     shopify_order_id 1
#     order_date "2017-02-20 10:20:00"
#     total 1.5
#     line_item_count 1
#     financial_status "MyString"
#   end
# end
