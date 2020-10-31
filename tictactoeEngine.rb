def fresh_board()
  board = Array.new(3) {Array.new(3)}
  return board
end

def render(board)
  puts " 0 1 2"
  puts " ------"
  board.each do |i|
    print "|"
    i.each do |j|
      print j == nil ? " " : j
      print " "
    end
    print "|\n"
  end
  puts " ------"
end

def get_move()
  coords = Array.new(2)
  puts "enter the X coordinate: "
  coords[0] = gets
  puts "enter the Y coordinate: "
  coords[1] = gets
  return coords
end

def make_move(old_board, coords, player)
  coords = coords
  while old_board[coords[0]][cooords[1]] != nil
    coords = get_move()
  end

  new_board = old_board.clone()
  new_board[coords[0]][coords[1]] = player
  return new_board
end

def play()
  board = fresh_board()
  coords = [0, 0]
  board = make_move(board, coords, "X")
  render(board)
end
