require 'rails_helper'

RSpec.describe "Pedigrees", :type => :request do
  describe "GET /pedigrees" do
    it "works! (now write some real specs)" do
      get pedigrees_path
      expect(response).to have_http_status(200)
    end
  end
end
