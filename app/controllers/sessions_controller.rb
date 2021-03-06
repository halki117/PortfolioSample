class SessionsController < ApplicationController

  def new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user.present?
      flash[:notice] = 'ログインしました'
      redirect_to root_path
    else
      flash[:danger] = 'ログインに失敗しました'
      render :new 
    end
  end

  def destroy
    logout
    flash[:notice] = 'ログアウトしました'
    redirect_to root_path
  end

end
