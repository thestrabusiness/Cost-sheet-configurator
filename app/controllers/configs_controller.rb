class ConfigsController < ApplicationController
  def new
    @config = Config.new
  end

  def create
    @config = Config.new(config_params)
    if @config.save
      redirect_to cost_sheet_path(@config.cost_sheet)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def config_params
    params.require(:config).permit(:name)
  end
end
