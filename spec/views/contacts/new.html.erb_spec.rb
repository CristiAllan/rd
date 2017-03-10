require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :email => "MyString",
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_name[name=?]", "contact[name]"

      assert_select "input#contact_user_id[name=?]", "contact[user_id]"
    end
  end
end
