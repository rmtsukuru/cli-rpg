require "./util"
require "./options"
require "./state"
require "./game"

$state = GameState.new
$totally_done = false

def handle_exit
  puts "Really exit?"
  $totally_done = ["yes", "y", "yeah", "ye", "yeh"].include? get_clean
end

def display_help
  puts "Help text goes here"
end

def main_update
  display_text
  display_options
  input = get_clean
  if ["exit", "quit", "q", "stop"].include? input
    handle_exit
  elsif ["help", "h"].include? input
    display_help
  elsif ["options", "o"].include? input
    display_options
  else
    parse_options input
  end
end

main_update until $totally_done
