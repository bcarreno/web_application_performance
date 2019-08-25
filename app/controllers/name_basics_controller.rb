require 'datadog/statsd'

class NameBasicsController < ApplicationController
  def index
    start_time = Time.now
    @name_basics = if params[:search].present?
                     NameBasic.where('primary_name ilike ?', "%#{params[:search]}%")
                   else
                     []
                   end
    duration = Time.now - start_time

    if params[:search].present?
      statsd = Datadog::Statsd.new

      statsd.increment('name_basics.search.count')

      statsd.histogram('name_basics.search.time', duration)
    end
  end
end
