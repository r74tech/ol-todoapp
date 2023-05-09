class ApplicationController < ActionController::API
    include DeviseTokenAuth::Concerns::SetUserByToken

    rescue_from ActionController::Redirecting::UnsafeRedirectError do
        redirect_to root_url
    end
end
