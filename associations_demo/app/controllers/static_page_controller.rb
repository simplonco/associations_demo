class StaticPageController < ApplicationController
def home
end
def has_many
	@in_rails_url = InRailsSample.customer_url
end
end
