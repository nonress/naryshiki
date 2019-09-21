class CompaniesController < ApplicationController
before_action :logged_in_user

  def show
    @user = User.find( params[:id])
  end

  def edit
  end

  def create
  end

  def destroy

  end
end
