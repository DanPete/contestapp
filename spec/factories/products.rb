
FactoryGirl.define do
  factory :product do
    sequence :name do |n|
      "Product #{n}"
    end

    shopify_product_id {rand(10000000)}

    last_shopify_sync {DateTime.now - rand(5).days}
  end
end


# FactoryGirl.define do
#   factory :product do
#     name "MyString"
#     shopify_product_id 1
#     last_shopify_sync "2017-02-19 19:35:51"
#   end
# end
