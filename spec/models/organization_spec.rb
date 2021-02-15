require 'rails_helper'

RSpec.describe Organization, type: :model do

  it 'check init' do
    Organization.new
  end

  it 'has name' do
    org = Organization.new
    expect(org).to respond_to(:name)
  end

  it 'check rejected' do
    org = Organization.new
    org.reject
    expect(org.status).to eq("rejected")
  end

  it 'check approved' do
    org = Organization.new
    org.approve
    expect(org.status).to eq("approved")
  end

  it 'set default status' do
    org = Organization.new
    org.set_default_status
    expect(org.status).to eq("submitted")
  end

  it 'check unchanged status' do
    org = Organization.new
    org.approve
    org.set_default_status
    expect(org.status).to eq("approved")
  end

end
