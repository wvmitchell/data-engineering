class Deal < ActiveRecord::Base

  def self.total_revenue
    all.collect(&:cost).inject(:+)
  end

  def cost
    count * price
  end

end
