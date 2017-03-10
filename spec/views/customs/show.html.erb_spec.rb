require 'rails_helper'

RSpec.describe "customs/show", type: :view do
  before(:each) do
    @custom = assign(:custom, Custom.create!(
      :name => "Name",
      :kind => 2,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
