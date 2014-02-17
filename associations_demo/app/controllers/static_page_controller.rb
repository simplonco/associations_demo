class StaticPageController < ApplicationController
def home
end
def has_many
	@in_rails_url = InRailsSample.customer_url
end
def belongs_to	
	@in_rails_url = InRailsSample.order_url
end
def visualisation
end

end
