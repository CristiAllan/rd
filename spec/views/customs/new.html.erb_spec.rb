require 'rails_helper'

RSpec.describe "customs/new", type: :view do
  before(:each) do
    assign(:custom, Custom.new(
      :name => "MyString",
      :kind => 1,
      :user => nil
    ))
  end

  it "renders new custom form" do
    render

    assert_select "form[action=?][method=?]", customs_path, "post" do

      assert_select "input#custom_name[name=?]", "custom[name]"

      assert_select "input#custom_kind[name=?]", "custom[kind]"

      assert_select "input#custom_user_id[name=?]", "custom[user_id]"
    end
  end
end
