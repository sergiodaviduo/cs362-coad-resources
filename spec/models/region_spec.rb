require 'rails_helper'

RSpec.describe Region, type: :model do

  it 'can be made' do
    Region.new
  end

  it 'has a name' do
    region = Region.new
    expect(region).to respond_to(:name)
  end

  # after working with this, I'm not sure if creating new region
  # objects should have their names actually as "Unspecified", or
  # if it's intentional to keep it in the ruby class object itself.
  #
  it 'unspecified name in class obj is literally "Unspecified"' do
    expect(Region.unspecified.name).to eq("Unspecified")
  end
  # no name given in created object, is nil, so fails
  it 'unspecified name in fresh new obj is literally "Unspecified"' do
    region = Region.new
    region.unspecified_test
    expect(region.name).to eq("Unspecified")
  end

end
