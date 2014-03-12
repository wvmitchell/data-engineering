class DashboardController < ApplicationController

  def new
  end

  def create
    file = params["Deals"]
    ParserService.read(file)
    #parsed = CSV.parse(file.read, {col_sep: "\t", headers: true})
    #parsed.each do |row|
    #  deal = Deal.new
    #  deal.purchaser = row["purchaser name"]
    #  deal.description = row["item description"]
    #  deal.price = row["item price"].to_f
    #  deal.count = row["purchase count"].to_i
    #  deal.merchant = row["merchant name"]
    #  deal.address = row["merchant address"]
    #  deal.save
    #end
    redirect_to dashboard_index_path
  end

  def index
    @deals = Deal.all
    @total_revenue = Deal.total_revenue
  end

end
