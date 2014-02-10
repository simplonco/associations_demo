class AssembliesAndPartsController < ApplicationController
	def index
		@assemblies_and_parts = AssembliesAndPart.all		
	end
end
