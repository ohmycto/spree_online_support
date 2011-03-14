class SpreeOnlineSupportHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_configurations_menu do
    %(<tr>
      <td><%= link_to t("online_support"), admin_online_support_settings_path %></td>
      <td><%= t("online_support_description") %></td>
    </ tr>)
  end

  insert_after :admin_configurations_sidebar_menu do
    %(<li<%== ' class="active"' if controller.controller_name == 'online_support_settings' %>><%= link_to t("online_support"), admin_online_support_settings_path %></li>)
  end

  insert_after :inside_head, 'shared/online_support'
end