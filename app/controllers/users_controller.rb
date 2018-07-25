class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]
  def index
      @users = User.paginate(page: params[:page])
  end

  def show
      @user = User.find(params[:id])
      #Showアクション＝ユーザー情報を表示するアクション
      
      #データを渡すところ
      #show.html.erbの
      #<%= @user.name %>, <%= @user.email %>
      #を引っ張ってくる！！！！！
      #こいつでShowに示した内容を取り出すことに成功！！！！！！！！
      
      
  end
end
