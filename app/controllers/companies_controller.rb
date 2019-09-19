class CompaniesController < ApplicationController
before_action :logged_in_user

  def show
    @user = current_user
  end

  def edit
  end

  def create
  end

  def destroy

  end
end
