class SessionsController < ApplicationController

#  def create
#    render 'new'
#  end


def create
  user = User.find_by(emailAddress: params[:session][:emailAddress])
  if user 
    # Sign the user in and redirect to the user's show page.
    
#     sign_in user
#
      redirect_to user
  else
    # Create an error message and re-render the signin form.
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
  end
end


end
