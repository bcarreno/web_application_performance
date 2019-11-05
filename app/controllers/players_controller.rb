require 'datadog/statsd'

class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  caches_action :show, expires_in: 1.hour

  # GET /players
  # GET /players.json
  def index
    start_time = Time.now
    @players = if params[:search].present?
                     Player.where('primary_name ilike ?', "%#{params[:search]}%")
                   else
                     []
                   end
    duration = Time.now - start_time

    if params[:search].present?
      statsd = Datadog::Statsd.new

      statsd.increment('players.search.count')

      statsd.histogram('players.search.time', duration)
    end
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:nconst, :primary_name, :birth_year, :death_year, :primary_profession, :known_for_titles)
    end
end
