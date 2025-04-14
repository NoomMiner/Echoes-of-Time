# Introduction
For gamers who enjoy experiencing virtual stories, the adventure game Echoes of Time provides a brief escape from reality into a new virtual world. Echoes of Time has value in its novelty, giving players the opportunity to experience its story for the first time--unlike other open-source adventure games, which many avid adventure gamers have already played before. The current system, which is implemented in GoDot with the graphical user interface and GDScript, includes a moveable player character in a top-down world implemented with tilesets, three interactive objects (a 'weird clock', a door, and a cake), two rooms that the player can move between, and a simple puzzle. With this we're using the stylistic assets developed by our artist, Wil.

*TODO LIST: update to match final product*

# Requirements
**Note: in our group, the workflow often involved incrementally developing features with multiple people contributing to each individual requirement/issue.
To reflect this, the format of this section has been adjusted so that multiple pull requests are associated with each requirement.
Where applicable, we also wrote a note about what aspect of the requirement was implemented above each pull request.**

Due to this workflow/structure, we cannot order requirements by who implemented them. <br>
Instead, we are providing a list of requirements and pull requests for each individual 
in our group:<br><br>
**Skyler Guard:** fixed collision with walls (#46), implemented interactive clock and door objects (#44, #45, #50, #53), implemented second room and transition (#54), refactored code (#58), made and implemented sprites (#44, #54)<br>
**Tyler Bryant:** synthesized node tree and movement script (#45), added tests (#56), cleaned up code (#47, #52)<br>
**Yahir Espinoza:** movement Script (#39), added player camera tracking and updated floor textures (#60).<br>
**Wil Johnson:** added tileset (#42), added skull and door assets (#59)<br>
<br>
*TODO LIST:*
- Double-check pull request numbers above and add links
- Add pictures
- Add any more recently implemented requirements

# Requirements: MUST ADD PICTURES
## Requirement: Implement a Moveable Character.<br>
### Issue: https://github.com/NoomMiner/Echoes-of-Time/issues/1<br>

Script for movement:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/39<br>
**Implemented by**: Yahir<br>
**Approved by**: Tyler<br>

Adjust GoDot node structure and script for compatability:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/45<br>
**Implemented by**: Tyler<br>
**Approved by**: Yahir<br>

Fixed collision w/ walls:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/46<br>
**Implemented by**: Skyler<br>
**Approved by**: Tyler<br>

## Requirement: Make the rooms interactable and responsive to change in them.<br>
### Issue: [Issue #12](https://github.com/NoomMiner/Echoes-of-Time/issues/12)<br>

Added Clock:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/44<br>
**Implemented by**: Skyler<br>
**Approved by**: Yahir<br>

Updated Clock (set sprite to autoplay, detect + respond to collision):<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/45<br>
**Implemented by**: Skyler<br>
**Approved by**: Yahir<br>

Added interactive text associated with clock:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/50<br>
**Implemented by**: Skyler<br>
**Approved by**: Tyler<br>

Added interactions for door and between clock/door:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/53<br>
**Implemented by**: Skyler<br>
**Approved by**: Tyler<br>

## Requirement: Multiple rooms with smooth transitions between them (added cake room) <br>
### Issue: [Issue #18](https://github.com/NoomMiner/Echoes-of-Time/issues/18)<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/54<br>
**Implemented by**: Skyler<br>
**Approved by**: Tyler <br>

## Requirement: Add tests<br>
### Issue: [Issue #63](https://github.com/NoomMiner/Echoes-of-Time/issues/63)<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/56<br>
**Implemented by**: Tyler<br>
**Approved by**: <br>

## Requirement: Clean up Code<br>
### Issue: [Issue #13](https://github.com/NoomMiner/Echoes-of-Time/issues/13)<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/47 (add git ignore)<br>
**Implemented by**: Tyler<br>
**Approved by**: Yahir <br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/52 (add git ignore)<br>
**Implemented by**: Tyler<br>
**Approved by**: Skyler <br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/58<br>
**Implemented by**: Skyler<br>
**Approved by**: Tyler<br>

## Requirement: Stylistic Graphics <br>
### Issue: [Issue #14](https://github.com/NoomMiner/Echoes-of-Time/issues/14)<br>

Added tile files:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/42<br>
**Implemented by**: Wil<br>
**Approved by**: Yahir<br>

Added clock animation:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/44<br>
**Implemented by**: Skyler<br>
**Approved by**: Yahir<br>

Added & implemented cake sprites:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/54<br>
**Implemented by**: Skyler<br>
**Approved by**: Tyler<br>

Added player camera tracking and implemented textures to floor:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/60<br>
**Implemented by**: Yahir<br>
**Approved by**: Tyler<br>

Added doors and skull file assets:
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/59<br>
**Implemented by**: Wil<br>
**Approved by**: Tyler<br>

## Requirement: Deploy game to itch.io <br>
### Issue: [Issue #64](https://github.com/NoomMiner/Echoes-of-Time/issues/64)<br>
**Pull request**: N/A <br>
**Implemented by**: Tyler<br>
**Approved by**: N/A<br>

Grading criteria (20 points): This section will be evaluated in terms of correctness, completeness, thoroughness, consistency, coherence, adequate use of language, and amount of work put into the implementation. Students can receive different grades depending on their involvement. It is expected that all members contribute with non-trivial implementation. All pull requests should be approved and integrated by the quality assurance person. You should follow an adequate workflow (description of the requirement on the issue tracker, submission of the implemented requirement as a pull request, and review of the pull request by another developer). 

# Tests
*Todo list:*
- Add additional automated tests

The testing framework used was GUT (Godot Unit Testing). The test scripts can be viewed [here](../EchoesofTimeGodot/test/unit). <br>
In addition, since our project is a video game with complex and frequent user interaction, we outlined a process for manual testing [here](EchoesofTimeGodot/test/manual_tests.md).<br>
## Example test
- Class Tested: [player.tscn](../EchoesofTimeGodot/player.tscn)
- Script: [test_movement.gd](../EchoesofTimeGodot/test/unit/test_movement.gd) <br>

This test ensured that the correct velocity was applied to the character depending on the direction pressed.
![Test Image](./unit_test_output.png)

# Demo
Include a link to a video showing the system working.

*ToDo list:*
Update video - add voice-over

Grading criteria (10 points): This section will be graded based on the quality of the video and on the evidence that the features are running as expected. Additional criteria are the relevance of the demonstrated functionalities, the correctness of the functionalities, and quality of the developed system from the external point of view (user interface).

# Code quality
In order to manage code quality, each developer adhered to our group expectations for testing and integrating code, knowing and following best practices, and communicating with the group.

1. **Version Control:** Our group used git for version control and to ensure each change was clearly logged and undoable. For each deliverable, our group added a new branch to develop the deliverable. Each additional feature and bug fix was its own pull request, so our developers could hold each other accountable and ensure a clear and consistent procedure for integrating updates.
2. **Communication:** Throughout the planning and development process, our group communicated with each other on a private Discord server. We used this server to discuss potential designs and features, give each other advice for issues that arose in implementation, and discuss questions about code expectations and quality trade-offs as a group. This aspect of our culture as a team allowed us to collaborate more smoothly and effectively, and minimize conflicts where multiple people worked on the same aspect of the project at the same time.
3. **Code testing:** While unit tests were developed and used in this project, due to the nature of video games, the primary way we ensured our project was adequately tested and functional was through consistent and thorough manual testing. Each developer tested the project as a player before commiting, making a pull request, or merging a pull request into a branch higher up in the git hierarchy.
4. **Best practices:** Each developer familiarized themself with the [best practices for GoDot development outlined in the official GoDot docs](https://docs.godotengine.org/en/stable/tutorials/best_practices/index.html). For scripts, we followed the official [GDScript style guide](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html). 
5. **General code quality:**  In addition to the GoDot-specific best practices, each developer aimed for generally well-written code: well-named variables, methods, and nodes, sufficient structure and comments to ensure human-readability, minimal coupling, etc. In each development phase, we would take additional time to go back over previously written code and refactor it to improve and maintain code quality throughout the project.

# Lessons Learned
While developing this release, our team learned about the challenges of maintaining code quality and working together smoothly, 
especially while balancing this project with other responsibilities as students and adults. <br><br>

**On Git and GoDot** <br>
One problem we had as a group was that initially we didn't use a proper gitignore file. We added one soon after, 
but removing the files that should never have been tracked in the first place was a challenge. Ultimately, the short-term solution was 
a long process of removing files, and long-term, the solution is to be strict with git-ignore expectations from the start. <br><br>
On the other-hand, git-ignore also introduced additional complications. Sometimes, one member of our group would implement a 
feature and test it before commiting, but when others pulled their work, it wouldn't compile properly. We believe that this was partly due to 
overlooked changes to ignored files. In hindsight, and moving forward, we believe one solution would be to keep track of what files are 
being ignored, and have a clear, established procedure for updating certain files (e.g. images) when updating branches. Alternatively, we could 
pay more attention to automated solutions which integrate with Git.<br><br>
In addition, the additional abstraction from using GoDot (and its GUI) complicated branching and merging with git. We learned that sometimes it even 
seems easier to work alone, to avoid the complications associated with teamwork, but our collaboration as a group can play a 
powerful role in ensuring our program was portable and we didn't overlook something important/a particular edge case. <br><br>
**Moving forward**<br>
If we would continue developing this project, we would take it at a slower pace, giving ourselves time to focus on code quality 
over implementing features within an academic deadline. To ensure better collaboration, we would also set aside more dedicated times for 
working together and set internal deadlines for specific issues/features. We would also rethink our approach to using Git with GoDot, looking into ways to ensure 
merges are smoother. We would continue developing features, polishing the story, and refactoring the code until we had a project we were 
truly proud of. 

*Additional Todos/points lost in D5: Tag the GitHub repository accordingly, update README/CONTRIBUTING files*

