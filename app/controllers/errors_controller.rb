class ErrorsController < ApplicationController
  def routing
    render plain: '400 Bad Request', status: :bad_request
  end
end
