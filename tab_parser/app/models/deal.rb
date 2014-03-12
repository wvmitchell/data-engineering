class Deal < ActiveRecord::Base

  belongs_to :item
  belongs_to :purchaser
  belongs_to :merchant

  validates_presence_of :item, :purchaser, :merchant

  def self.total_revenue
    all.collect {|deal| deal.item.price * deal.count}.inject(:+)
  end

  def cost
    item.price * count
  end

end
