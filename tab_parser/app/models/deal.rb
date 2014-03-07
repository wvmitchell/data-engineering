class Deal < ActiveRecord::Base

  def cost
    count * price
  end

end
