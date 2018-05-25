require_dependency "my_app/application_controller"

module MyApp
  class TemplatesController < ApplicationController

    def index
      binding.pry
      render :json => Template.all.map do |t|
        {
          :name => t.name,
          :active => t.active
        }
      end
    end
  end
end
