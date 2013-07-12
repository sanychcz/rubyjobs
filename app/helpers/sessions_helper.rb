module SessionsHelper
	
		def signed_in?
			!current_user.nil?
		end

		def signed_in_user
	    redirect_to root_url unless signed_in? 
	  end
end
