module Refinery
  module Ifgroups
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Ifgroups

      engine_name :refinery_ifgroups

      initializer "register refinerycms_ifgroups plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "ifgroups"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.ifgroups_admin_ifgroups_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/ifgroups/ifgroup'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Ifgroups)
      end
    end
  end
end
