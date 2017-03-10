require 'rails_helper'

RSpec.describe "customs/index", type: :view do
  before(:each) do
    assign(:customs, [
      Custom.create!(
        :name => "Name",
        :kind => 2,
        :user => nil
      ),
      Custom.create!(
        :name => "Name",
        :kind => 2,
        :user => nil
      )
    ])
  end

  it "renders a list of customs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
