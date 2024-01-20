class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        "/books"
    end

    def after_sign_up_path_for(resorce)
        "/books"
    end
end
