class ApplicationController < ActionController::API
    include DeviseTokenAuth::Concerns::SetUserByToken
    include ActionController::Cookies
    include ActionController::RequestForgeryProtection
    protect_from_forgery with: :exception

    rescue_from ActionController::Redirecting::UnsafeRedirectError do
        redirect_to root_url
    end
    def set_csrf_token
        cookies['CSRF-TOKEN'] = {
            domain: 'localhost',
            value: form_authenticity_token
        }
    end
    def set_csrf_token_header
        response.set_header('X-CSRF-Token', form_authenticity_token)
    end
end
