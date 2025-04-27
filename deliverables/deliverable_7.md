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
An acceptance test is a test that verifies the correct implementation of a feature from the user interface perspective. An acceptance test is a black box test (the system is tested without knowledge about its internal implementation). Provide the following information:

Test framework you used to develop your tests (e.g., Selenium, Katalon Studio, Espresso2, Cucumber, etc.)
Link to your GitHub folder where your automated acceptance tests are located.
An example of an acceptance test. Include in your answer a GitHub link to the test and an explanation about the tested feature.
A print screen/video showing the acceptance test execution. 
Grading criteria (7 points): adequate choice of a test framework, coverage of the tests, quality of the tests, adequate example of an acceptance test, print screen/video showing successful tests execution.

# Validation
At the beginning of the semester, you talked to the clients/potential users to understand their needs. Now it is time to check if you are on the right track by conducting some user evaluation on the actual system. Include in this deliverable the following information:

Script: The script should have the tasks that you gave to the user, what data you collected, and the questions you asked. In particular, do not forget to add questions about the users’ general impressions. You can ask open questions (e.g., How would you describe the homepage of our app? How do you compare our system to the competitor X?) or closed questions (On a scale of 1 to 10, how would you rate the layout of our application? On the same scale, how likely would you use the system in its current state?). Take a look at the inception and requirements deliverables to help create the script. Design a script to check if you are achieving your initial goals and if the features are implemented in a satisfactory way. 

Results: Conduct the user evaluation with at least 3 users. Report the data that you collected.

## Interview 1: 
### User Test Feedback: Angelina

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


Reflections: Reflect on what you observed. Some questions that you can explore: What features worked well? What can be changed? How is the learning curve of your system? Did the users perform the tasks as you expected? Did the users’ actions produce the results they expected? What did the users like the most? Is your value proposition accomplished? 

Grading criteria (17 points): adequate script, adequate report of the results, adequate reflection, language.

