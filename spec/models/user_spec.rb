require 'rails_helper'

RSpec.describe User, type: :model do

  it 'exists' do
    User.new
  end

  it 'email returns email' do
    user = User.new
    expect(user).to respond_to(:email)
  end

  it 'check default role on init' do
    user = User.new
    expect(user.role).to eq("organization")
  end

end
