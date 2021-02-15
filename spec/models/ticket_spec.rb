require 'rails_helper'

RSpec.describe Ticket, type: :model do

  it 'check init' do
    Ticket.new
  end

  it 'has name' do
    ticket = Ticket.new
    expect(ticket).to respond_to(:name)
  end

  it 'no organization on init' do
    ticket = Ticket.new
    expect(ticket.captured?).to eq(FALSE)
  end

  it 'open on init' do
    ticket = Ticket.new
    expect(ticket.open?).to eq(TRUE)
  end

end
