require 'csv'

class ParserService

  def self.read(file)
    parsed = CSV.parse(file.read, {col_sep: "\t", headers: true})
    parsed.each do |row|
      deal = Deal.new
      deal.purchaser = row["purchaser name"]
      Purchaser.find_or_create_by(name: row["purchaser name"])
      deal.description = row["item description"]
      deal.price = row["item price"].to_f
      deal.count = row["purchase count"].to_i
      Merchant.find_or_create_by(name: row["merchant name"], address: row["merchant address"])
      deal.merchant = row["merchant name"]
      deal.address = row["merchant address"]
      deal.save
    end
  end

end
