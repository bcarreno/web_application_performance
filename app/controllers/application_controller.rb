class ApplicationController < ActionController::Base
  rescue_from ActionController::InvalidAuthenticityToken, with: :render_400

  private

  def render_400
    render plain: '400 Bad Request', status: :bad_request
  end
end
