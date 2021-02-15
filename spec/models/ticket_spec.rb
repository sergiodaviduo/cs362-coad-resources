require 'rails_helper'

RSpec.describe Ticket, type: :model do

  it 'check init' do
    Ticket.new
  end

end
