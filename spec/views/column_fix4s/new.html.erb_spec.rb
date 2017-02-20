require 'rails_helper'

RSpec.describe "column_fix4s/new", type: :view do
  before(:each) do
    assign(:column_fix4, ColumnFix4.new())
  end

  it "renders new column_fix4 form" do
    render

    assert_select "form[action=?][method=?]", column_fix4s_path, "post" do
    end
  end
end
