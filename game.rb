# Main game logic
# Sub-divide less functionalities from here

def fetch_text(state)
  text = case state.scene
  when :start
    "You're in a blank, featureless plain. There's a small hill with a cave opening in the distance."
  when :cave
    "You're in a cave. It is dank and moist. A thin trickle of water flows from above; it looks delicious."
  end
end

# Reads from state
def display_text(state = $state)
  puts fetch_text state
end

def fetch_options(state)
  case state.scene
  when :start
    [:explore, :look, :wait]
  when :cave
    [:look, :taste, :wait]
  end
end

# Reads option list from state
def display_options(state = $state)
  puts "["
  options = fetch_options state
  options.each_index do |i|
    puts "  [#{i}] #{options[i]}"
  end
  puts "]"
end

# Updates state based off of input
def parse_options(input, state = $state)
  case input
  when Options.new(["0", "explore", "x", "e"])
    state.scene = :cave
  end
end
