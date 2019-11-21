# frozen_string_literal: true

class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = 'アカウント有効かできました'
      redirect_to user
    else
      flash[:danger] = '既にアカウントは有効化済みです'
      redirect_to root_path
    end
  end
end
