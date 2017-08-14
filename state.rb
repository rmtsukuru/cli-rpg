# Global game state object, just stores game state data
# Designed to be modular so you can pass it in locally wherever if needed
class GameState
  attr_accessor :scene

  def initialize
    @scene = :start
  end
end
