module ApplicationHelper
  def logout_button
    link_to 'Logout', destroy_user_session_path, method: :delete, class: "nav-link" if user_signed_in?
  end
  def edit_profile_button
    link_to 'Edit Profile', edit_user_registration_path, class:"nav-link" if user_signed_in?
  end
  def sign_up_button
    link_to 'Sign Up', new_user_registration_path, class:"nav-link" if !user_signed_in?
  end
  def sign_in_button
    link_to 'Sign In', new_user_session_path, class:"nav-link" if !user_signed_in?
  end
  def disp_alerts
    render 'layouts/alerts' if notice
  end

end
