class TboomersLivesController < ApplicationController
  before_action :set_tboomers_life, only: [:show, :edit, :update, :destroy]

  # GET /tboomers_lives
  # GET /tboomers_lives.json
  def index
    @tboomers_lives = TboomersLife.all
  end

  # GET /tboomers_lives/1
  # GET /tboomers_lives/1.json
  def show
  end

  # GET /tboomers_lives/new
  def new
    @tboomers_life = TboomersLife.new
  end

  # GET /tboomers_lives/1/edit
  def edit
  end

  # POST /tboomers_lives
  # POST /tboomers_lives.json
  def create
    @tboomers_life = TboomersLife.new(tboomers_life_params)

    respond_to do |format|
      if @tboomers_life.save
        format.html { redirect_to @tboomers_life, notice: 'Tboomers life was successfully created.' }
        format.json { render :show, status: :created, location: @tboomers_life }
      else
        format.html { render :new }
        format.json { render json: @tboomers_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tboomers_lives/1
  # PATCH/PUT /tboomers_lives/1.json
  def update
    respond_to do |format|
      if @tboomers_life.update(tboomers_life_params)
        format.html { redirect_to @tboomers_life, notice: 'Tboomers life was successfully updated.' }
        format.json { render :show, status: :ok, location: @tboomers_life }
      else
        format.html { render :edit }
        format.json { render json: @tboomers_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tboomers_lives/1
  # DELETE /tboomers_lives/1.json
  def destroy
    @tboomers_life.destroy
    respond_to do |format|
      format.html { redirect_to tboomers_lives_url, notice: 'Tboomers life was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tboomers_life
      @tboomers_life = TboomersLife.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tboomers_life_params
      params.require(:tboomers_life).permit(:title, :active)
    end
end
