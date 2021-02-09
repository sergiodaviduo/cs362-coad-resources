require 'rails_helper'

RSpec.describe ResourceCategory, type: :model do

  it 'can be made' do
    ResourceCategory.new
  end

  it 'activate changes active to true' do
    res_cat = ResourceCategory.new
    res_cat.activate

    expect(res_cat.active).to eq(true)
  end

  it 'deactivate changes active to false' do
    res_cat = ResourceCategory.new
    res_cat.deactivate

    expect(res_cat.active).to eq(false)
  end

end
