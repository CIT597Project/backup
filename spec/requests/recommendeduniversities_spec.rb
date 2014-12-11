require 'rails_helper'

RSpec.describe "Recommendeduniversities", :type => :request do
  describe "GET /recommendeduniversities" do
    it "works! (now write some real specs)" do
      get recommendeduniversities_path
      expect(response).to have_http_status(200)
    end
  end
end
