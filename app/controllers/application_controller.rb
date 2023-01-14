class ApplicationController < ActionController::Base
    def landing
        render html: "Happy Book Management!"
        
    end
    
end
