def boards 
  [Board.create(title: "Dinner Dash"),
   Board.create(title: "The Pivot"),
   Board.create(title: "Mythical Creatures")]
end

def tickets
  boards.each do |board|
    5.times do 
      board.tickets.create(title: "new ticket #{rand(1..100)}")
    end
  end
end

tickets


