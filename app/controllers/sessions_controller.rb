class SessionsController < ApplicationController
  

  def create
	customer = Customer.find_by_name(params[:name])
	if customer && customer.authenticate(params[:password])
		session[:customer_id] = customer.id	#stores the id in the session
		redirect_to customer				#displays the customer/show view
	else
		flash.now[:error] = "Invalid email/password combination."
		render 'new'		#shows the signin page again
	end
  end

  def destroy
	if signed_in?
		session[:customer_id] = nil
	else
		flash[:notice] = "You need to sign in first"
	end
	redirect_to signin_path
  end
  
  def new
  
  end
end
