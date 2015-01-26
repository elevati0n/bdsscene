xml.instruct! 
@appointmentsClient = (Appointment.where(:id))
@appointmentsFree = (Appointment.where(status: "free"))

xml.appointments do 	
xml.free do
	@appointmentsFree.each do |appointment|  
		xml.appointment do
		xml.appointment_id appointment.id
		xml.status appointment.status
		xml.startTime appointment.startTime
		xml.endTime appointment.endTime
		xml.day appointment.day
		xml.year appointment.year
		end
	end 
end

xml.client do
	@appointmentsClient.each do |appointment| 
		xml.appointment do
		xml.appointment_id appointment.id
		xml.status appointment.status
		xml.startTime appointment.startTime
		xml.endTime appointment.endTime
		xml.day appointment.day
		xml.year appointment.year
		end
	end
end
end


