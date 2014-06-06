require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :category => "MyString",
      :price_per_unit => 1
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_category[name=?]", "item[category]"

      assert_select "input#item_price_per_unit[name=?]", "item[price_per_unit]"
    end
  end
end
