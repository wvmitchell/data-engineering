require 'spec_helper'

describe ParserService do

  it "reads data into the database" do
    file = "../example_input.tab"
    ParserService.read(file)
    assert_equal 3, Purchaser.all.count
    assert_equal 3, Merchant.all.count
    assert_equal 3, Item.all.count
  end

end
