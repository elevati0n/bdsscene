class AppointmentsController < ApplicationController

   def create 
 	@appointments = Appointment.create(appointment_params)
 	@user = User.find(appointment_params[:user_id])    
   	if @appointments.save
    		flash[:success] = "appointment created!"
    		redirect_to @user
   		end 
   	else if @appointments.nil?
     		redirect_to signin_path
     		flash[:failure] = "Session Lost / Please Log in"
	end
#    if @appointments.save
#      flash[:success] = "appointment created!"
#      redirect_to :action => :show

end
  
 
 def index
    @appointment = Appointments.all
  end


  def destroy
    @appointment = Appointments.find(params[:id])
    @appointment.delete
    redirect_to appointments_path
  end

  def show 
	@appointment = Appointments.all
  end 

  private

    def appointment_params
      params.require(:appointment).permit(:startTime, :endTime, :day, :month, :year, :status, :user_id)
    end
end

