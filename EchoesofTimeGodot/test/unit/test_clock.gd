extends GutTest

# initial state

# assert
  # game state is 0
  # clock sprite is visible
  # rich text not visible
  # pressing 'q' does nothing

# move player over clock

# assert:
  # game state is 1
  # clock sprite is invisible
  # rich text visible

# press 'q'

# assert:
  # game state is 2
  # clock sprite invisible
  # rich text changes
