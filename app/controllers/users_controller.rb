class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @tags = @user.tag_list
  end

end
