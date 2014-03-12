require 'spec_helper'

describe 'uploading a form' do

  before do
    visit root_path

    within('#upload_form') do
      attach_file('Deals', '../example_input.tab')
      click_on 'Submit'
    end
  end

  it 'can accept a form' do
    page.should have_content('Gross Revenue')
  end

  it 'takes data from the form' do
    within('#purchasers') do
      page.body.should include('Snake')
      page.body.should include('Marty')
      page.body.should include('Amy')
    end
  end

  it 'computes the total revenue' do
    within('#total_revenue') do
      page.body.should include('95')
    end

    Deal.create(count: 1, item: Item.first, purchaser: Purchaser.first, merchant: Merchant.first)

    visit dashboard_index_path

    within('#total_revenue') do
      page.body.should include('105')
    end
  end

end
