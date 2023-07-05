class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:favorites]

    def index  
      end


      def search
        search_term = params[:q]
    
        if search_term.blank?
          redirect_to root_path
        else
          @foods = Food.where("CONVERT(name USING utf8) COLLATE utf8_general_ci LIKE ?", "%#{search_term}%")
        end
      end
      

  

end




