require 'rails_helper'

RSpec.describe User, type: :model do

  it 'exists' do
    User.new
  end

  it 'user returns email' do
    user = User.new
    expect(user).to respond_to(:email)
  end

  it 'check default role on init' do
    user = User.new
    expect(user.role).to eq("organization")
  end

  it 'set role to admin' do
    user = User.new
    user.role = "admin"
    expect(user.role).to eq("admin")
  end

end
