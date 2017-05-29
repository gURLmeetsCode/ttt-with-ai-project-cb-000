module Players
  class Human < Player
    def move(board)
      puts "Choose a number between 1-9"
      gets.strip
    end
  end
end
