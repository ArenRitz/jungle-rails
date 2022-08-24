class Admin::DashboardController < ApplicationController
  user = ENV["HTTP_B_AUTH_USER"]
  pswd = ENV["HTTP_B_AUTH_PSWD"]
  http_basic_authenticate_with name: user, password: pswd
  def show
  end
end
