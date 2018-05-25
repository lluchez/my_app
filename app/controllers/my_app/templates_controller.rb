require_dependency "my_app/application_controller"

module MyApp
  class TemplatesController < ApplicationController

    def index
      render :json => Template.all
    end
  end
end
