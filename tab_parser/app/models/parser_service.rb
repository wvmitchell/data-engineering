require 'csv'

class ParserService

  def self.read(file)
    parsed = CSV.parse(file.read, {col_sep: "\t", headers: true})
    parsed.each do |row|
      deal = Deal.new
      deal.purchaser = Purchaser.find_or_create_by(name: row["purchaser name"])
      deal.item = Item.find_or_create_by(description: row["item description"], price: row["item price"].to_f)
      deal.merchant = Merchant.find_or_create_by(name: row["merchant name"], address: row["merchant address"])
      deal.count = row["purchase count"].to_i
      deal.save
    end
  end

end
