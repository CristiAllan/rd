require 'rails_helper'

RSpec.describe "customs/edit", type: :view do
  before(:each) do
    @custom = assign(:custom, Custom.create!(
      :name => "MyString",
      :kind => 1,
      :user => nil
    ))
  end

  it "renders the edit custom form" do
    render

    assert_select "form[action=?][method=?]", custom_path(@custom), "post" do

      assert_select "input#custom_name[name=?]", "custom[name]"

      assert_select "input#custom_kind[name=?]", "custom[kind]"

      assert_select "input#custom_user_id[name=?]", "custom[user_id]"
    end
  end
end
