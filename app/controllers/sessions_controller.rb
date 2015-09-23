class SessionsController < ApplicationController
  # include SessionsHelper
  # before_action :set_user, only: [:create]

  def new
    # if alread logged in, just redirect to user's user_path
    # if not logged in, create a session
    if logged_in?
      @user = current_user
      redirect_to user_path(@user)
    else
      @session = User.new
    end
  end

  def create
    puts "\n ==> User Name: " + params[:session][:email] + "\n ==> Password: " + params[:session][:password] + "\n\n"
    
    @user = User.find_by_email(params[:session][:email].downcase)
    if @user || @user.authenticate(params[:session][:email].downcase, params[:session][:password].downcase)
      # Sign the user in and redirect to the user's show page.
      puts " ==> Authenticate successfully"
      session[:id] = @user.id
      session[:name] = @user.name
      session[:email] = @user.email
      session[:password] = @user.password
      session[:permission] = @user.password
      # flash[:notice] = "Welcom back, #{session[:name]}"
      puts "name: #{session[:name]}, id: #{session[:id]}"
      # redirect_to user_path, :id => session[:id]
      # redirect_to :action => "edit", :id => 1
      # redirect_to "http://www.google.com"
      # redirect_to :back
    else
      # Create an error message and re-render the signin form.
      puts " ==> Authenticate failed"
      flash[:notice] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def password

  end

  def password_change
    @user = current_user
    if @user.password == params[:session][:password_old]
      @user.update({:password => params[:session][:password]})
      redirect_to users_path, notice: 'Password changed successfully'
    else
      flash.now[:danger] = 'Incorrect password. Please try again'
      render 'password'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
  
  private
    # :session is the frontend login form
    # def set_user
    #   @user = User.authentication(params[:session][:email], params[:session][:password])
    #   if @user
    #     puts "User is not null"
    #   end
    #   # @user = log_in(params[:session][:email], params[:session][:password])
    # end
    
    # def login_params
    #   params.require(:user).permit(:email, :password)
    # end
    
end
