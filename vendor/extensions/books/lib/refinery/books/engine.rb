module Refinery
  module Books
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Books

      engine_name :refinery_books

      initializer "register refinerycms_books plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "books"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.books_admin_books_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/books/book'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Books)
      end
    end
  end
end
