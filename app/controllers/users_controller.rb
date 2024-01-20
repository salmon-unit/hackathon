class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.introduction = params[:introduction]

    if params[:profile_image]
      @user.profile_image = params[:profile_image]
      image = params[:profile_image]
      File.binwrite("public/user_images/#{@user.profile_image}", image.read)
    end 

    if @user.save
      flash[:notice] = "プロフィールを更新しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/#{@user.id}/edit")
    end 
  end
end
