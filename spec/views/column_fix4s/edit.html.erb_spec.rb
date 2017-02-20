require 'rails_helper'

RSpec.describe "column_fix4s/edit", type: :view do
  before(:each) do
    @column_fix4 = assign(:column_fix4, ColumnFix4.create!())
  end

  it "renders the edit column_fix4 form" do
    render

    assert_select "form[action=?][method=?]", column_fix4_path(@column_fix4), "post" do
    end
  end
end
