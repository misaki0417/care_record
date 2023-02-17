class MealDrugTakingRecordsController < ApplicationController

  def new
    @record=MealDrugTakingRecord.new
  end

  def create
    record= MealDrugTakingRecord.new(meal_drug_taking_record_params)
    if record.save
      flash[:notice] = "食事・服薬記録を保存しました"
      redirect_to new_meal_drug_taking_record_path
    else
      flash[:danger] = "保存に失敗しました"
    end
  end
  
  def index
    record
  end

  private

  def meal_drug_taking_record_params
    params.require(:meal_drug_taking_record).permit(:date, :time, :ingestion_quantity, :drug_taking_record, :user_id)
  end

end
