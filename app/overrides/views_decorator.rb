Deface::Override.new(
  :virtual_path => "spree/admin/shared/_configuration_menu",
  :name => "spree_online_support_admin_configurations_sidebar_menu",
  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
  :text => "<%= configurations_sidebar_menu_item t(:online_support), admin_online_support_settings_path %>",
  :disabled => false)

Deface::Override.new(
  :virtual_path => "spree/layouts/spree_application",
  :name => "spree_online_support_inside_head",
  :insert_bottom => "body",
  :partial => "spree/shared/online_support",
  :disabled => false)

