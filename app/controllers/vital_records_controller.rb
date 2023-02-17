class VitalRecordsController < ApplicationController

  def new
    @vital=VitalRecord.new
  end

  def create
    vital=VitalRecord.new(vital_record_params)
    if vital.save
      flash[:notice]= "保存しました"
      redirect_to new_vital_record_path
    else
      flash[:alert] = "保存に失敗しました"
    end

  end

  private

  def vital_record_params
    params.require(:vital_record).permit(:date, :time, :blood_pressure, :pulse, :body_temperature)
  end
end
