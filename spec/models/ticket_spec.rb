require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "is valid with title" do
    ticket = Ticket.new(title: "new ticket")

    expect(ticket).to be_valid
  end

  it "is not valid without a title" do
    ticket = Ticket.new(title: nil)

    expect(ticket).not_to be_valid
  end

  it "has default status of backlog" do
    ticket = Ticket.new(title: "new ticket")
    
    expect(ticket.status).to eq("backlog")
  end
end
