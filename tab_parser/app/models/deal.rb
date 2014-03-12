class Deal < ActiveRecord::Base

  belongs_to :item
  belongs_to :purchaser
  belongs_to :merchant

  def self.total_revenue
    all.collect(&:cost).inject(:+)
  end

  def cost
    count * price
  end

end
