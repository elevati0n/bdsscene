xml.instruct!
@appointments = Appointment.all 
 @appointmentsPending = (Appointment.where(status: "pending"))
 @appointmentsBooked = (Appointment.where(status: "booked"))
 @appointmentsFree = (Appointment.where(status: "booked"))

xml.appointments do 	
xml.all do
	@appointments.each do |appointment|  
		xml.appointment do
		xml.appointment_id appointment.id
		xml.status appointment.status
		xml.startTime appointment.startTime
		xml.endTime appointment.endTime
		xml.month appointment.month
		xml.day appointment.day
		xml.year appointment.year
		end
	end 
end

xml.pending do
	@appointmentsPending.each do |appointment| 
		xml.appointment do
		xml.appointment_id appointment.id
		xml.status appointment.status
		xml.startTime appointment.startTime
		xml.endTime appointment.endTime
		xml.day appointment.day
		xml.month appointment.month
		xml.year appointment.year
		end
	end
end

xml.free do 
	@appointmentsFree.each do |appointment| 
		xml.appointment do
		xml.appointment_id appointment.id
		xml.status appointment.status
		xml.startTime appointment.startTime
		xml.endTime appointment.endTime
		xml.day appointment.day
		xml.month appointment.month
		xml.year appointment.year
end
end
end
xml.booked do
	@appointmentsBooked.each do |appointment|  
		xml.appointment do
		xml.appointment_id appointment.id
		xml.status appointment.status
		xml.startTime appointment.startTime
		xml.endTime appointment.endTime
		xml.day appointment.day
		xml.month appointment.month
		xml.year appointment.year
		end
	end 
end
end



