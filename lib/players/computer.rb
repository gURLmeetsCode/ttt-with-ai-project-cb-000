module Players
  class Computer < Player
    def move(board)
      move = nil
      if !board.taken?(5)
        move = "5"
      elseif board.turn_count == 1
        move = "1"
      elsif board.turn_count == 2
        move = [1,3,7,9].detect{|t| board.taken?(t)}.to_s
    end
  end
end 
