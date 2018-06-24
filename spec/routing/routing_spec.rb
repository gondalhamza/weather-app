require "rails_helper"

RSpec.describe "Cities", :type => :routing do
  describe 'HomeController' do
    context 'Index' do
			it "/index routable?" do
				expect(get: '/index').to be_routable
	    end
			it "/index to exact controller and action" do
	      expect(post: '/get_weather').to route_to({:controller=>"home", :action=>"get_weather"})
	    end
			it "/get_weather routable?" do
	      expect(post: '/get_weather').to be_routable
	    end
			it "/get_weather to exact controller and action" do
	      expect(post: '/get_weather').to route_to({:controller=>"home", :action=>"get_weather"})
	    end
    end
  end
end