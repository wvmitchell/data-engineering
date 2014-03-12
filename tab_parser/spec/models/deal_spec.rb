require 'spec_helper'

describe Deal do

  it {should validate_presence_of(:item)}
  it {should validate_presence_of(:purchaser)}
  it {should validate_presence_of(:merchant)}

end
