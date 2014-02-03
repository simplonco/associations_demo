class PhysiciansController < ApplicationController
	def show
		@physician = Physician.find(params[:id])
		@appointments = Appointment.where(physician_id: @physician.id)
		# binding.pry 
	end 
end
