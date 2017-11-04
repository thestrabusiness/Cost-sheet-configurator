class CostSheet < ActiveRecord::Base
  has_many :configs

  def total
    configs.collect(&:total).sum
  end
end
