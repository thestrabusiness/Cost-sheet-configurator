class ConfigItem < ActiveRecord::Base
  belongs_to :config

  def labor_total
   (labor_hours * unit_cost)
  end

  def extended_cost
    (unit_cost * quantity)
  end

  def list_price
    extended_cost + (extended_cost/(1-markup_percentage))
  end

  def total
    list_price + labor_total
  end
end
