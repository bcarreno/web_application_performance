class TitleBasicsController < ApplicationController
  before_action :set_title_basic, only: [:show, :edit, :update, :destroy]

  # GET /title_basics
  # GET /title_basics.json
  def index
    @title_basics = TitleBasic.limit(10)
  end

  # GET /title_basics/1
  # GET /title_basics/1.json
  def show
  end

  # GET /title_basics/new
  def new
    @title_basic = TitleBasic.new
  end

  # GET /title_basics/1/edit
  def edit
  end

  # POST /title_basics
  # POST /title_basics.json
  def create
    @title_basic = TitleBasic.new(title_basic_params)

    respond_to do |format|
      if @title_basic.save
        format.html { redirect_to @title_basic, notice: 'Title basic was successfully created.' }
        format.json { render :show, status: :created, location: @title_basic }
      else
        format.html { render :new }
        format.json { render json: @title_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /title_basics/1
  # PATCH/PUT /title_basics/1.json
  def update
    respond_to do |format|
      if @title_basic.update(title_basic_params)
        format.html { redirect_to @title_basic, notice: 'Title basic was successfully updated.' }
        format.json { render :show, status: :ok, location: @title_basic }
      else
        format.html { render :edit }
        format.json { render json: @title_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /title_basics/1
  # DELETE /title_basics/1.json
  def destroy
    @title_basic.destroy
    respond_to do |format|
      format.html { redirect_to title_basics_url, notice: 'Title basic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title_basic
      @title_basic = TitleBasic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_basic_params
      params.require(:title_basic).permit(:tconst, :title_type, :primary_title, :original_title, :is_adult, :start_year, :end_year, :runtime_minutes, :genres)
    end
end
