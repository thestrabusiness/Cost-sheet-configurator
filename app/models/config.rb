class Config < ActiveRecord::Base
  has_many :config_items
  belongs_to :cost_sheet

  def total
    config_items.collect(&:total).sum
  end
end
