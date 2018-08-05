class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]
  before_action :admin_user,     only: :destroy
  
  def index
      @users = User.paginate(page: params[:page])
  end

  def show
      @user = User.find(params[:id])
      #Showアクション(メソッド)＝ユーザー情報を表示するアクション
      
      #データを渡すところ
      #show.html.erbの
      #<%= @user.name %>, <%= @user.email %>
      #を引っ張ってくる！！！！！
      #こいつでShowに示した内容を取り出すことに成功！！！！！！！！
      
      
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
  

end

private
  
  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end

