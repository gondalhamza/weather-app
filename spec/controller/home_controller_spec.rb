require "rails_helper"

RSpec.describe HomeController, type: :controller do
  describe 'HomeController' do
    context 'Index' do
			it "checks for http status" do
		    post :get_weather, format: :json, :params => { :location_id => "707860" }
		    expect(response).to have_http_status(200)
		    json = JSON.parse(response.body)
		    expect(json['temp']).to_not be_nil
		    expect(json).to_not be_nil
			end
    end
  end
end

