# Description
For gamers who enjoy experiencing virtual stories, the adventure game Echoes of Time provides a brief escape from reality into a new virtual world. Echoes of Time has value in its novelty, giving players the opportunity to experience its story for the first time--unlike other open-source adventure games, which many avid adventure gamers have already played before. The current system, which is implemented in GoDot with the graphical user interface and GDScript, includes a moveable player character in a top-down world implemented with tilesets, three interactive objects (a 'weird clock', a door, and a cake), two rooms that the player can move between, and a simple puzzle. With this we're using the stylistic assets developed by our artist, Wil.

# Verification
The testing framework used was GUT (Godot Unit Testing). The test scripts can be viewed [here](../EchoesofTimeGodot/test/unit). <br>
In addition, since our project is a video game with complex and frequent user interaction, we outlined a process for manual testing [here](../EchoesofTimeGodot/test/manual_tests.md).<br>
## Example test
- Class Tested: [player.tscn](../EchoesofTimeGodot/player.tscn)
- Script: [test_movement.gd](../EchoesofTimeGodot/test/unit/test_movement.gd) <br>

This test ensured that the correct velocity was applied to the character depending on the direction pressed.
![Test Image](./unit_test_output.png)

# Acceptance Test
Automated acceptance testing for video games is extremely uncommon as games by design are dynamic and unpredictable. This is why user testing and QA teams are so common in the game development industry. Because of this issue, we have decided to create a document that outlines a standardized procedure for doing acceptance testing on our game in lieu of having automated acceptance testing. The steps are outlined as follows:
1. Launch game
   - ensure correct scene is loaded (i.e. the main menu)
2. Test Menu buttons
   - ensure all buttons function as intended
3. Once first game scene after menu has loaded, use WASD keys to move around
   - ensure character is responsive
   - ensure animations play correctly
   - ensure proper interaction with walls
4. Move player over to clock object
   - ensure correct text is shown
   - ensure object is removed from the game scene on collision with player
5. Move player over to door
   - ensure correct text prompt displays
6. Use item according to text prompt
   - ensure correct scene is loaded
7. Navigate player to cake
   - ensure correct prompt displays
8. Press key according to prompt
   - ensure cake sprite and text are updated correctly
9. Navigate player to door
   - ensure correct text prompt
10. Restart game according to text prompt
    - ensure main menu is loaded
11. Quit
    - ensure gracefull exit
# Validation
At the beginning of the semester, you talked to the clients/potential users to understand their needs. Now it is time to check if you are on the right track by conducting some user evaluation on the actual system. Include in this deliverable the following information:

Script: The script should have the tasks that you gave to the user, what data you collected, and the questions you asked. In particular, do not forget to add questions about the users’ general impressions. You can ask open questions (e.g., How would you describe the homepage of our app? How do you compare our system to the competitor X?) or closed questions (On a scale of 1 to 10, how would you rate the layout of our application? On the same scale, how likely would you use the system in its current state?). Take a look at the inception and requirements deliverables to help create the script. Design a script to check if you are achieving your initial goals and if the features are implemented in a satisfactory way. 

## Script:
#### Greetings:
- Get the user's name.
- Do you have experience playing adventure games? How do you feel about them?<br>

*If the user doesn't know the term 'adventure game*: An adventure game is a game that combines story and puzzles.

#### Task 1: ask user to play the game, with no further instructions.
**Questions**
- What are your general impressions of the game?
- Is the navigation smooth and intuitive?
- Please rate the game on a scale of 1-10.

#### Task 2: guided playthrough
*Go to title page*
- How would you describe the title screen? How does it compare to the title pages of other games you have played?<br>

*Go to first room*
- What do you think about the graphics?
- Please rate the intuitiveness of the controls on a scale of 1-10.<br>

*Play through second room--guide user to discover 'easter egg' by pressing q over already-eaten cake.*
- How would you describe the game overall?
- What do you like most about *Echoes of Time*?
- Please rate the story line on a scale of 1-10.
- What do you think is the single most important improvement that could make this game better? 

## Results

### Interview 1: Angelina

#### Basic User Info
- **Name:** Angelina  
- **Adventure Game Background:**  
  - Familiar with adventure games; played titles such as:  
    - *Infinity Nikki*  
    - *Undertale*  
    - *The Legend of Zelda: Breath of the Wild*

#### Task 1: Initial Playthrough (No Guidance)

##### General Impressions
- **Intuitive controls.**  
- Puzzles felt "involved" and contributed to the vibe.  
- Concept resembles a "fun indie game."  
- **Quote:**  
  > "I wish there was a visible inventory so I could know I had a key on me."

##### Navigation & Controls
- Navigation described as **intuitive**.  
- Controls rated **10/10** (*"uses WASD"*).

##### Replayability & Rating
- **Overall Rating:** **2/10**  
  - Critiques:  
    - "Very little replayability."

#### Task 2: Guided Playthrough (Step-by-Step)

##### Title Screen & UI
- **Title Screen:**  
  > "Seems like a labor of love kind of thing."  
- **UI Feedback:**  
  - Responsive with clear focus indicators.  
  - Suggestion: Add music to "set the tone."

##### Graphics & Atmosphere
- Enjoyed the "mystery of the environment."  
- Noted "implications of lore" behind the setting.

##### Storyline & Concept
- **Story Rating:** **4/10**  
  - Feedback: Story is implied but underdeveloped.  
- **Overall Impression:**  
  > "A good start and I enjoy the concept."

##### Key Improvement Suggestion
- **Most Important Fix:**  
  > "\[Add\] a puzzle" (suggests expanding puzzle mechanics).

<hr/>

### Interview 2: Scott

#### Basic User Info
- **Name:** Scott
- **Gaming background**:
  - He is aware of adventure games and the games in that genre.
  - Scott is an avid fan of *FromSoftware* games, enjoys the story and mechanics of those types of games.
  - Enjoys story more than puzzles when it comes to adventure games
#### Task 1: Initial Playthrough (No Guidance)

##### General Impressions
  - Smooth gameplay
  - User goes straight to clock instead of door, not knowing purpose of clock
  - Feels the game lacks substance, but shows potential

##### Navigation & Controls
  - Based on previous knowledge of games, thinks ‘q’ is an awkward button for interaction
  - Would be nice to have controller support
  - Likes the movement and speed of character, streamline movement
##### Replayability & Rating
  - **Overall Rating: 3/10**
    - Wants the game to have hazards for more replayability
#### Task 2: Guided Playthrough (Step-by-Step)

##### Title Screen & UI
  - Likes the title screen, thinks its represents the game well
  - Inclusion of inventory and description of items are things he believe this game could use
##### Graphics & Atmosphere
  - Animations are nice
  - Thinks rooms should have more variation in layout instead of basic grid layout

##### Storyline & Concept
- **Story Rating:** **6/10**  
  - Likes concept shows promise

##### Key Improvement Suggestion
  - Most important improvement to be made is inclusion of more interactions

<hr/>

### Interview 3: Mason

## Basic User Info
**Name:** Mason
**Gaming background:**
- Has play-tested games before
- Plays many adventure games such as Skyrim and Oblivion

#### Task 1: Initial Playthrough (No Guidance)

##### General Impressions
  - Smooth gameplay
  - Notes how the door is obvious to him, but to others it won't be obvious

##### Navigation & Controls
  - Player notes that the movement of the player sprite is fast
  - Player notes how the 'q' button is unintuitive and should be changed

##### Replayability & Rating
  - **Overall Rating: 4/10**
    - Wants to have more puzzles and exploration available
    
#### Task 2: Guided Playthrough (Step-by-Step)

##### Title Screen & UI
- Likes the title screen

##### Graphics & Atmosphere
  - Animated sprites are nice
  - Suggested more details in the environments 

##### Storyline & Concept
- **Story Rating:** **4/10**  
  - Likes concept, shows promise

##### Key Improvement Suggestion
- Change the text to floating near the bottom of the screen, and change the font to something less generic

<hr/>

## Reflection:
What works: the UI is smooth and responsive, with straightforward controls. The learning curve is fairly easy, with users performing the tasks as expected and with the expected results. The main issue with the game is that it needs to be expanded to include more exploration, a concrete story, hazards, and harder puzzles with more environment interaction. For polish, it would also be good to change the interact key from 'q', have the inventory be visible, add music, and implement a more unique font. The implications of lore and the promise of the concept are the strongest aspects of the game so far.<br>
Overall, it is evident that we did not accomplish our value proposition: to make a fun and unique puzzle game with themes of environmentalism and unforeseen consequences. We finished a 'proof-of-concept' that implements the most fundamental mechanics and UI of a top-down adventure game, but the features that would have made the game truly interesting never reached the final product. For example, a unique story was developed, but we didn't develop enough features to implement it, using placeholder flavour text instead. Likewise, a sprite was made for a dragon (which would have been the primary hazard), but it wasn't integrated with the game itself.
<br>
Ultimately, we set out to do too much, and ended up with the bare-bones structure of an adventure game without a story or puzzle that could truly appeal to users. The formal user-evaluations reflected this, as users acknowledged the smooth mechanics that were implemented and the promise of the concept, but were disappointed by the underwhelming story and puzzle.
