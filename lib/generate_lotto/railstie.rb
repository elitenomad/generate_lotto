require "rails"

module GenerateLotto
  class Railtie < Rails::Railtie
    initializer "GenerateLott.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include GenerateLotto::Helper
      end
    end
  end
end