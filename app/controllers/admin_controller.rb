class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize

  # get "admin"
  def index
    @users = User.all
  end

  # put/patch "admin/:id"
  def update
    
  end

  private

  def authorize
    if !current_user.has_role? :admin
      render text:"No access for you, lowly non-admin!"
    end
  end

end
