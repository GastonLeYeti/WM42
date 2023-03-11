#frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  # GET resource password new
  def new

  end

  # POST  resource password
  def create

  end

  # GET resource password edit?reset_password_token=abcdef
  def edit

  end

  # PUT resource password
  def update

  end

  protected

  def after_resetting_password_path_for(resource)
  end

  # The path used after sending reset password instructions
  def after_sending_reset_password_instructions_path_for(resource_name)
  end
end
