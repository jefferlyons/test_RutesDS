class StudentDriversController < ApplicationController
  before_action :set_student_driver, only: [:show, :edit, :update, :destroy]

  # GET /student_drivers
  # GET /student_drivers.json
  def index
    @student_drivers = StudentDriver.all
  end

  # GET /student_drivers/1
  # GET /student_drivers/1.json
  def show
    @drivers = Driver.all
    @students = Student.all
  end

  # GET /student_drivers/new
  def new
    @student_driver = StudentDriver.new
    @drivers = Driver.all
    @students = Student.all
  end

  # GET /student_drivers/1/edit
  def edit
     @drivers = Driver.all
     @students = Student.all
  end

  # POST /student_drivers
  # POST /student_drivers.json
  def create
    @student_driver = StudentDriver.new(student_driver_params)

    respond_to do |format|
      if @student_driver.save
        format.html { redirect_to @student_driver, notice: 'Student driver was successfully created.' }
        format.json { render :show, status: :created, location: @student_driver }
      else
        format.html { render :new }
        format.json { render json: @student_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_drivers/1
  # PATCH/PUT /student_drivers/1.json
  def update
    respond_to do |format|
      if @student_driver.update(student_driver_params)
        format.html { redirect_to @student_driver, notice: 'Student driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_driver }
      else
        format.html { render :edit }
        format.json { render json: @student_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_drivers/1
  # DELETE /student_drivers/1.json
  def destroy
    @student_driver.destroy
    respond_to do |format|
      format.html { redirect_to student_drivers_url, notice: 'Student driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_driver
      @student_driver = StudentDriver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_driver_params
      params.require(:student_driver).permit(:student_id, :driver_id)
    end
end
