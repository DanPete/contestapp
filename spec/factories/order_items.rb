FactoryGirl.define do
  factory :order_item do
    order_id 1
    variant_id ""
    shopify_product_id ""
    shopify_variant_id ""
    unit_price 1.5
    quantity 1
  end
end
