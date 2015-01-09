class CourseAreasController < ApplicationController
  before_action :set_course_area, only: [:show, :edit, :update, :destroy]

  # GET /course_areas
  # GET /course_areas.json
  def index
    @course_areas = CourseArea.all
  end

  # GET /course_areas/1
  # GET /course_areas/1.json
  def show
  end

  # GET /course_areas/new
  def new
    @course_area = CourseArea.new
  end

  # GET /course_areas/1/edit
  def edit
  end

  # POST /course_areas
  # POST /course_areas.json
  def create
    @course_area = CourseArea.new(course_area_params)

    respond_to do |format|
      if @course_area.save
        format.html { redirect_to @course_area, notice: 'Course area was successfully created.' }
        format.json { render :show, status: :created, location: @course_area }
      else
        format.html { render :new }
        format.json { render json: @course_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_areas/1
  # PATCH/PUT /course_areas/1.json
  def update
    respond_to do |format|
      if @course_area.update(course_area_params)
        format.html { redirect_to @course_area, notice: 'Course area was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_area }
      else
        format.html { render :edit }
        format.json { render json: @course_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_areas/1
  # DELETE /course_areas/1.json
  def destroy
    @course_area.destroy
    respond_to do |format|
      format.html { redirect_to course_areas_url, notice: 'Course area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_area
      @course_area = CourseArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_area_params
      params.require(:course_area).permit(:name, :course_id)
    end
end
