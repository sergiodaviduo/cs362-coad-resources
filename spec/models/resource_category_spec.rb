require 'rails_helper'

RSpec.describe ResourceCategory, type: :model do

  it 'can be made' do
    ResourceCategory.new
  end

  it 'has name' do
    res_cat = ResourceCategory.new

    expect(res_cat).to respond_to(:name)
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

  it 'inactive? returns boolean' do
    res_cat = ResourceCategory.new

    expect(res_cat.inactive?).to be_in([true, false])
  end

end
