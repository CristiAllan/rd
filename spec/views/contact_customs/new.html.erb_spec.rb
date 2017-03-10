require 'rails_helper'

RSpec.describe "contact_customs/new", type: :view do
  before(:each) do
    assign(:contact_custom, ContactCustom.new(
      :value => "MyText",
      :contact => nil,
      :custom => nil
    ))
  end

  it "renders new contact_custom form" do
    render

    assert_select "form[action=?][method=?]", contact_customs_path, "post" do

      assert_select "textarea#contact_custom_value[name=?]", "contact_custom[value]"

      assert_select "input#contact_custom_contact_id[name=?]", "contact_custom[contact_id]"

      assert_select "input#contact_custom_custom_id[name=?]", "contact_custom[custom_id]"
    end
  end
end
