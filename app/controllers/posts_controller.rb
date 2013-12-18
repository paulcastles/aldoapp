class PostsController < ApplicationController
before_filter :authorise

	def create
		@employee = Employee.find params[:employee_id]
		@post = @employee.posts.create params[:post]
		@post.customer_id = @current_customer.id	# sets the user_id FK
		@post.save								#saves the @post object to the posts table
		
			respond_to do |format|
				format.html {redirect_to @employee}
			end
	end
end
