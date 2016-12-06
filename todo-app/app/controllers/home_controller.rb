class HomeController < ProtectedController
  def index
    @user = User.find_by id: session[:user_id]
    @tasks = @user.tasks
  end
end
