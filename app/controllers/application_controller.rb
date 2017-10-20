class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user! #devise method authenticate user!

  def index
  end

end
