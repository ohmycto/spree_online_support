class Admin::OnlineSupportSettingsController < Admin::BaseController
  def update
    preferences = params[:preferences]
    enable_online_support = preferences[:enabled].nil? ? false : true;
    preferences.update(:enabled => enable_online_support)
    Spree::OnlineSupport::Config.set(preferences)

    respond_to do |format|
      format.html {
        redirect_to admin_online_support_settings_path
      }
    end
  end
end
