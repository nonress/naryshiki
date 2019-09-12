class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:sessionss][:email])
    if @user.autenticate(params[:sessionss][:password])

    else
      flash[:danger] = 'メールアドレスもしくはパスワードが間違っています'
      render 'new'
    end
  end
end
