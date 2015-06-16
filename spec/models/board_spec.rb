require 'rails_helper'

RSpec.describe Board, type: :model do
  it "is valid" do
    board = Board.new(title: "Title")

    expect(board).to be_valid
  end

  it "is not valid without a title" do
    board = Board.new(title: "")

    expect(board).not_to be_valid
  end
end
