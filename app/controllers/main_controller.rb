class MainController < ApplicationController
  def index
    flash[:notice] = "loggedin successfully"
  end
end
