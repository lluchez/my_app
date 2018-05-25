Rails.application.routes.draw do
  mount MyApp::Engine => "/my_app"
end
