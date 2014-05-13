class HomeController < ApplicationController
		
		def show
		end
		
		def send_contact_us_email
				#~ puts params.inspect
				#~ Emailer.feedback_email(@restaurant,@customer_opinion).deliver
				Emailer.contact_email(params["from_name"],params["from_email"],params["from_subject"],params["from_message"]).deliver
		end
end
