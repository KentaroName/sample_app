class UsersController < ApplicationController
  def show
      @user = User.find(params[:id])
      #データを渡すところ
      #show.html.erbの
      #<%= @user.name %>, <%= @user.email %>
      #を引っ張ってくる！！！！！
      #こいつでShowに示した内容を取り出すことに成功！！！！！！！！
  end
end
