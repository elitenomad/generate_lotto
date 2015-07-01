require "rails"

module GenerateLotto
  class Railtie < Rails::Railtie
    initializer "GenerateLott.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include GenerateLotto::Helper
      end
    end

    rake_tasks do
      load "generate_lotto/tasks/generate_lotto.rake"
    end
  end
end