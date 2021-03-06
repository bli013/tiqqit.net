require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "must have a title" do
    ticket = Ticket.create
    expect(ticket.errors[:title]).to_not be_empty
  end

  it "must have a project category" do
    ticket = Ticket.create 
    expect(ticket.errors[:project_cat]).to_not be_empty
  end

  it "must have have a problem category or type" do
    ticket = Ticket.create
    expect(ticket.errors[:prob_cat]).to_not be_empty
  end

  it "must have must have a priority" do
    ticket = Ticket.create
    expect(ticket.errors[:priority]).to_not be_empty
  end
    
  it "must have a description" do
    ticket = Ticket.create
    expect(ticket.errors[:desc]).to_not be_empty
  end

  it "must have a status" do
    ticket = Ticket.create
    expect(ticket.errors[:status]).to_not be_empty
  end

  it "must have a due date" do
    ticket = Ticket.create
    expect(ticket.errors[:due_date]).to_not be_empty
  end

  it "is optional to have a comment" do
    ticket = Ticket.create
    expect(ticket.errors[:comments]).to be_empty
  end

  it "must have a created at date" do
    ticket = Ticket.create
    expect(ticket.errors[:created_at]).to be_empty
  end

  describe 'The ticket model should belong to users' do
    it {should belong_to(:user)}
  end


  it 'Should validate the length of ticket title to be atleast 3 characters long' do
    should validate_length_of(:title).is_at_least(3).on(:create).with_message("Title must be 3 characters or longer!")
  end

end