class ApplicationController < ActionController::Base
  layout "_header.html.haml"
  layout "application.html.haml"
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
