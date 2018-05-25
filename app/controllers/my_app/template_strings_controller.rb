require_dependency "my_app/application_controller"

module MyApp
  class TemplateStringsController < ApplicationController
    render :json => TemplateString.all
  end
end
