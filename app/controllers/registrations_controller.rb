class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    edit_profiles_url if @profiles.nil?
  end
end
