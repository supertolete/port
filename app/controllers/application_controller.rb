class ApplicationController < ActionController::Base
 

http_basic_authenticate_with name: "orlando", password: "lajara" 

 protect_from_forgery with: :exception



end
