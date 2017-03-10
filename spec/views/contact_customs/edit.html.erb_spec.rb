require 'rails_helper'

RSpec.describe "contact_customs/edit", type: :view do
  before(:each) do
    @contact_custom = assign(:contact_custom, ContactCustom.create!(
      :value => "MyText",
      :contact => nil,
      :custom => nil
    ))
  end

  it "renders the edit contact_custom form" do
    render

    assert_select "form[action=?][method=?]", contact_custom_path(@contact_custom), "post" do

      assert_select "textarea#contact_custom_value[name=?]", "contact_custom[value]"

      assert_select "input#contact_custom_contact_id[name=?]", "contact_custom[contact_id]"

      assert_select "input#contact_custom_custom_id[name=?]", "contact_custom[custom_id]"
    end
  end
end
