require 'rails_helper'

RSpec.describe "contact_customs/index", type: :view do
  before(:each) do
    assign(:contact_customs, [
      ContactCustom.create!(
        :value => "MyText",
        :contact => nil,
        :custom => nil
      ),
      ContactCustom.create!(
        :value => "MyText",
        :contact => nil,
        :custom => nil
      )
    ])
  end

  it "renders a list of contact_customs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
