class ToiletRecordsController < ApplicationController

  def new
    @toilet_record=ToiletRecord.new
  end

  def create
    toilet_record=ToiletRecord.new(toilet_record_params)
    if toilet_record.save
      flash[:notice]= "保存しました"
      redirect_to new_toilet_record_path
    else
      flash[:alert] = "保存に失敗しました"
    end
  end

  private

  def toilet_record_params
    params.require(:toilet_record).permit(:date, :time, :toilet_method, :defecation_record, :defecation_status, :urination_record)
  end

end
