class ActivityRecordsController < ApplicationController
  before_action :set_activity_record, only: %i[ show edit update destroy ]
  before_action :set_activity_options, only: %i[ create new edit update ]

  # GET /activities or /activities.json
  def set_activity_options
    @activity_options = Activity.all.pluck(:description, :id)
  end

  # GET /activity_records or /activity_records.json
  def index
    @activity_records = ActivityRecord.all
  end

  # GET /activity_records/1 or /activity_records/1.json
  def show
  end

  # GET /activity_records/new
  def new
    @activity_record = ActivityRecord.new
  end

  # GET /activity_records/1/edit
  def edit
  end

  # POST /activity_records or /activity_records.json
  def create
    @activity_record = ActivityRecord.new(activity_record_params)

    respond_to do |format|
      if @activity_record.save
        format.html { redirect_to activity_record_url(@activity_record), notice: "Activity record was successfully created." }
        format.json { render :show, status: :created, location: @activity_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_records/1 or /activity_records/1.json
  def update
    respond_to do |format|
      if @activity_record.update(activity_record_params)
        format.html { redirect_to activity_record_url(@activity_record), notice: "Activity record was successfully updated." }
        format.json { render :show, status: :ok, location: @activity_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_records/1 or /activity_records/1.json
  def destroy
    @activity_record.destroy

    respond_to do |format|
      format.html { redirect_to activity_records_url, notice: "Activity record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_record
      @activity_record = ActivityRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_record_params
      params.require(:activity_record).permit(:activity_id, :record_date, :quantity)
    end
end
