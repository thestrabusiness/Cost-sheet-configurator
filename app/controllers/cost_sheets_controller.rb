class CostSheetsController < ApplicationController
  def index
    @cost_sheets = CostSheet.all
  end

  def new
    @cost_sheet = CostSheet.new
  end

  def create
    @cost_sheet = CostSheet.new(cost_sheet_params)
    if @cost_sheet.save
      redirect_to cost_sheets_path
    else
      render :new
    end
  end

  def show
    @cost_sheet = CostSheet.find(params[:id])
    @configs = @cost_sheet.configs
  end

  private

  def cost_sheet_params
    params.require(:cost_sheet).permit(:customer_name, :project_number)
  end
end
