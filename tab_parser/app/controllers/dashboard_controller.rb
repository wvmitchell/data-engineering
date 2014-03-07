require 'csv'
class DashboardController < ApplicationController

  def new
  end

  def create
    file = params["Deals"]
    parsed = CSV.parse(file.read, {col_sep: "\t", headers: true})
    parsed.each do |row|
      deal = Deal.new
      deal.purchaser = row["purchaser name"]
      deal.save
    end
    redirect_to dashboard_index_path
  end

  def index
  end

end
