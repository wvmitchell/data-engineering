class DashboardController < ApplicationController

  def new
  end

  def create
    file = params["Deals"]
    ParserService.read(file)
    redirect_to dashboard_index_path
  end

  def index
    @deals = Deal.all
    @total_revenue = Deal.total_revenue
  end

end
