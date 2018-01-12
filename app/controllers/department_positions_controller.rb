class DepartmentPositionsController < ApplicationController
  before_action :set_department_position, only: [:show, :edit, :update, :destroy]

  # GET /department_positions
  # GET /department_positions.json
  def index
    @department_positions = DepartmentPosition.all
  end

  # GET /department_positions/1
  # GET /department_positions/1.json
  def show
  end

  # GET /department_positions/new
  def new
    @department_position = DepartmentPosition.new
  end

  # GET /department_positions/1/edit
  def edit
  end

  # POST /department_positions
  # POST /department_positions.json
  def create
    @department_position = DepartmentPosition.new(department_position_params)

    respond_to do |format|
      if @department_position.save
        format.html { redirect_to @department_position, notice: 'Department position was successfully created.' }
        format.json { render :show, status: :created, location: @department_position }
      else
        format.html { render :new }
        format.json { render json: @department_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /department_positions/1
  # PATCH/PUT /department_positions/1.json
  def update
    respond_to do |format|
      if @department_position.update(department_position_params)
        format.html { redirect_to @department_position, notice: 'Department position was successfully updated.' }
        format.json { render :show, status: :ok, location: @department_position }
      else
        format.html { render :edit }
        format.json { render json: @department_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /department_positions/1
  # DELETE /department_positions/1.json
  def destroy
    @department_position.destroy
    respond_to do |format|
      format.html { redirect_to department_positions_url, notice: 'Department position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department_position
      @department_position = Departmentposition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_position_params
      params.require(:department_position).permit(:department_id, :position_id, :decription)
    end
end
