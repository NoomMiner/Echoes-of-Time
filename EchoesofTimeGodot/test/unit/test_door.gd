extends GutTest

# game state = 0, repeat for game state = 1

  # with player away from door
  # assert
    # rich text not visible
    # pressing 'q' does nothing

  # with player next to door
  # assert
    # rich text: locked door
    # pressing 'q' does nothing

# game state = 2
  # with player away from door
  # assert
    # rich text not visible
    # pressing 'q' does nothing

  # with player next to door
  # assert
    # rich text: use key?
    # pressing 'q' moves to next room
