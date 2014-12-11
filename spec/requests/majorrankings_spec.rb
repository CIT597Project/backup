require 'rails_helper'

RSpec.describe "Majorrankings", :type => :request do
  describe "GET /majorrankings" do
    it "works! (now write some real specs)" do
      get majorrankings_path
      expect(response).to have_http_status(200)
    end
  end
end
