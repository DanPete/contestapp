require 'rails_helper'

RSpec.describe "column_fix4s/show", type: :view do
  before(:each) do
    @column_fix4 = assign(:column_fix4, ColumnFix4.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
