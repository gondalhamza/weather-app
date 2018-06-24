require "rails_helper"

RSpec.describe "Cities", :type => :request do
  describe 'HomeController' do
    context 'requests' do
      it "checks for http status" do
        get index_path
        expect(response).to have_http_status(200)
      end
      it "response check" do
        get "/index"
        expect(response).to_not be_nil
      end
    end
  end
end