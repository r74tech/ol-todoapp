class Auth::CsrfCheckController < ApplicationController
  def csrf_token
    csrf_token = form_authenticity_token
    cookies['CSRF-TOKEN'] = { value: csrf_token, httponly: false}
    render json: { message: "CSRF token has been set in a cookie." }
  end
end
