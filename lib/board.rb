class Board
  attr_accessor :cells
  # board is initialized as a new game (empty cells)
    def initialize(cells)
      @cells.reset
    end
     #setting new game with 9 empty placeholders for player tokens
    def reset
      cells = Array.new(9,"")
    end

    def display
      puts "#{cells[0]} | #{cells[1]} | #{cells[2]}"
      puts "-----------"
      puts "#{cells[3]} | #{cells[4]} | #{cells[5]}"
      puts "-----------"
      puts "#{cells[6]} | #{cells[7]} | #{cells[8]}"
    end

    def position(input)
      input = gets.chomp
      cells[input.to_i -1]
    end

    def update(input, player)
      cells[input.to_i -1] = player.token
    end

    #methods used to return values based on the state of the board
    def full?(cells)
      cells.all?{|char| char if char == "X" || char == "O"} # using the if statement setsup a implicit return and keeps the loop going.
    end

    def turn_count(board)
      counter = 0
      cells.each do | i|
        if i == "X" || i == "O"
          counter += 1
        end
      end
      counter
    end

    def taken?(input)
      !(position[input]) == " " || position[input] == "" || position[input] == nil)
    end



    def valid_move?(input)
      input.to_i.between(1,9) && !taken?(input)
    end

end