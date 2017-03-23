class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize
  def index
    @users = User.all
  end

  def update
    user = User.find(params[:id])
    user.remove_role user.roles.last
    user.add_role :teacher
    redirect_to '/admin'
  end

  private

  def authorize
    render text:"Hey wise guy, buzz off! Admins only." if !current_user.has_role? :admin
  end
end
