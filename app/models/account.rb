class Account < ApplicationRecord
  validates_presence_of :shopify_account_url
  validates_presence_of :shopify_api_key
  validates_presence_of :shopify_shared_secret
  #validates_presence_of
end