require 'spec_helper'

describe 'uploading a form' do

  it 'can accept a form' do
    visit root_path

    within('#upload_form') do
      attach_file('Deals', '../example_input.tab')
      click_on 'Submit'
    end

    page.should have_content('Gross Revenue')
  end

end
