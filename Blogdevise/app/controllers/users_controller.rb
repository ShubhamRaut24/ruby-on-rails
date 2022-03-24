class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
   

    def show
        @articles = @user.articles
    end

    def new 
        @user = User.new
        authorize @user
    end

    def index 
      @users = User.paginate(page: params[:page], per_page: 3)
      authorize @users
    end

    def edit
      authorize @user
    end

    def update
      authorize @user
    if @user.update(user_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to root_path
    else
      render 'edit'
    end
    end

    def create
        @user = User.new(user_params)
        authorize @user
        if @user.save
          session[:user_id] = @user.id
            flash[:notice] = "Welcome to the Alpha Blog #{@user.username}, you have successfully signed up"
          redirect_to articles_path
        else
          flash[:alert] = "Something went wrong"
          render 'new'
        end
    end

    def destroy
    authorize @user
    @user.destroy
    session[:user_id] = nil if !current_user.admin?
    flash[:notice] = "Account and all associated articles successfully deleted"
    redirect_to users_path 
     
  end


    

    private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end


  def set_user
    @user = User.find(params[:id])
  end


   


end
