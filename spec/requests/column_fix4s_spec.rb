require 'rails_helper'

RSpec.describe "ColumnFix4s", type: :request do
  describe "GET /column_fix4s" do
    it "works! (now write some real specs)" do
      get column_fix4s_path
      expect(response).to have_http_status(200)
    end
  end
end
