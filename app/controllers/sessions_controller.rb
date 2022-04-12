class SessionsController < ApplicationController

  def new
  end

  def create
    # 送られてきたメールアドレスでユーザーを検索する
    user=User.find_by(email: session_params[:email])
    #ユーザーが見つかった場合には、送られてきたパスワードによる認証をauthenticateメソッドを使う
     if user&.authenticate(session_params[:password])
       #認証に成功した場合に、セッションにuser_idを格納しています。
       session[:user_id]=user.id
       
       redirect_to root_path, notice: 'ログインしました'
     else
       render :new
    end
  end

  def destroy
  end
end
