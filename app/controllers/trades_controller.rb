class TradesController < ApplicationController
  http_basic_authenticate_with name: 'bostonrb', password: 'ezcater'
  skip_before_action :verify_authenticity_token, only: :create

  def create
    average = params[:average].to_i
    delta = params[:delta].to_i
    interval = rand((average-delta)..(average+delta))
    logger.debug "going to sleep #{interval}"
    start = Time.now
    while Time.now - start < interval.seconds
      slow_operation
    end
    render json: ''
  end

  private

  def slow_operation
    1_000_000.times { Time.new }
  end
end
