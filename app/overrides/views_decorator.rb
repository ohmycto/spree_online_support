Deface::Override.new(
  :virtual_path => "admin/configurations/index",
  :name => "spree_online_support_admin_configurations_menu",
  :insert_bottom => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
  :text => "<tr>
  <td><%= link_to t(\"online_support\"), admin_online_support_settings_path %></td>
  <td><%= t(\"online_support_description\") %></td>
  </tr>",
  :disabled => false)

Deface::Override.new(
  :virtual_path => "admin/shared/_configuration_menu",
  :name => "spree_online_support_admin_configurations_sidebar_menu",
  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
  :text => "<li<%== ' class=\"active\"' if controller.controller_name == 'online_support_settings' %>><%= link_to t(\"online_support\"), admin_online_support_settings_path %></li>",
  :disabled => false)

Deface::Override.new(
  :virtual_path => "layouts/spree_application",
  :name => "spree_online_support_inside_head",
  :insert_bottom => "body",
  :partial => "shared/online_support",
  :disabled => false)

