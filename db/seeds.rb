def boards 
  [Board.create(title: "Dinner Dash"),
   Board.create(title: "The Pivot"),
   Board.create(title: "Mythical Creatures")]
end

def tickets
  boards.each do |board|
    10.times do 
      board.tickets.create(title: "new ticket", status: "#{['backlog', 'current sprint', 'in progress', 'done'].sample}")
    end
  end
end

tickets


