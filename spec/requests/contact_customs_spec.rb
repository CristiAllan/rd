require 'rails_helper'

RSpec.describe "ContactCustoms", type: :request do
  describe "GET /contact_customs" do
    it "works! (now write some real specs)" do
      get contact_customs_path
      expect(response).to have_http_status(200)
    end
  end
end
