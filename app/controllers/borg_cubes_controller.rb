class BorgCubesController < ApplicationController
  before_action :set_borg_cube, only: [:show, :edit, :update, :destroy]

  # GET /borg_cubes
  # GET /borg_cubes.json
  def index
    @borg_cubes = BorgCube.all
  end

  # GET /borg_cubes/1
  # GET /borg_cubes/1.json
  def show
  end

  # GET /borg_cubes/new
  def new
    @borg_cube = BorgCube.new
  end

  # GET /borg_cubes/1/edit
  def edit
  end

  # POST /borg_cubes
  # POST /borg_cubes.json
  def create
    @borg_cube = BorgCube.new(borg_cube_params)

    respond_to do |format|
      if @borg_cube.save
        format.html { redirect_to @borg_cube, notice: 'Borg cube was successfully created.' }
        format.json { render action: 'show', status: :created, location: @borg_cube }
      else
        format.html { render action: 'new' }
        format.json { render json: @borg_cube.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borg_cubes/1
  # PATCH/PUT /borg_cubes/1.json
  def update
    respond_to do |format|
      if @borg_cube.update(borg_cube_params)
        format.html { redirect_to @borg_cube, notice: 'Borg cube was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @borg_cube.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borg_cubes/1
  # DELETE /borg_cubes/1.json
  def destroy
    @borg_cube.destroy
    respond_to do |format|
      format.html { redirect_to borg_cubes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borg_cube
      @borg_cube = BorgCube.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def borg_cube_params
      params.require(:borg_cube).permit(:name, :hp, :x, :y, :sleeping_borg, :waking_borg)
    end
end
