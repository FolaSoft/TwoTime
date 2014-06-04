class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Authentication module SessionsHelper is an OOB Rails implementation
  # Used extensively to manipulate Session objects over a stateless HTTP protocol
  include SessionsHelper
end
