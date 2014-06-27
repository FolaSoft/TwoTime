class UsersController < ApplicationController
before_action :signed_in_user, only: [:index,:edit, :update, :destroy, :following, :followers]
before_action :correct_user, only: [:edit, :update]
before_action :admin_user, only: :destroy

  def index
    @users = User.paginate(page:params[:page])
  end

  def new
  	@user = User.new
  end

  def edit
  end

  def update
    # authenticatoin add so remove public update @user = User.find(params[:id])
    if @user.update_attributes(user_parms)
      #Handle successful here
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      rend 'edit'
    end
  end

  def show
  	@user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page:params[:page])
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!

    if @user.save                                 
      sign_in @user
      flash[:success] = "Welcome to the Sample App!" # Handle a successful save.
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

  

    def correct_user
      @user = User.find(params[:id])
      redirect_to root_url unless current_user?(@user)
    end

    def admin_user
      redirect_to root_url unless current_user.admin?
    end
end
