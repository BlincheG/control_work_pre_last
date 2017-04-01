class Adapters::OnlyAdmins < ActiveAdmin::AuthorizationAdapter

  def authorized?(action, subject = nil)
    users.admin?
  end

end