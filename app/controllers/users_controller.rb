class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	# Order user pins DESC, too! Mattan missed this 
  	@pins = @user.pins.order("created_at desc").page(params[:page]).per_page(20)
  end
end
