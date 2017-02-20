require 'rails_helper'

RSpec.describe "column_fix4s/index", type: :view do
  before(:each) do
    assign(:column_fix4s, [
      ColumnFix4.create!(),
      ColumnFix4.create!()
    ])
  end

  it "renders a list of column_fix4s" do
    render
  end
end
