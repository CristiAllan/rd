require 'rails_helper'

RSpec.describe "contact_customs/show", type: :view do
  before(:each) do
    @contact_custom = assign(:contact_custom, ContactCustom.create!(
      :value => "MyText",
      :contact => nil,
      :custom => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
