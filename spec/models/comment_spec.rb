# spec/models/vehicle_spec.rb
require 'rails_helper'

describe Comment do
  it 'has a valid factory' do
    expect(build(:comment)).to be_valid
  end

end
