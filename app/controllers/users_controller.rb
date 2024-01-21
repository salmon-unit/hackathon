class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def show
        @user = User.find_by(id: params[:id])
    end

  def create
    @user = User.new(
      user_name: params[:user_name],
      email: params[:email],
      profile_image: "default_user.jpg",
      user_password: params[:user_password]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end

  def login
    @user = User.find_by(email: params[:email], user_password: params[:user_password])
    if @user
      p 'ログインしました'
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/")
    else
      p 'ログインできませんでした'
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @user_password = params[:user_password]
      render("users/login_form")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.user_name = params[:user_name]
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

  def login_form 
  end

end
