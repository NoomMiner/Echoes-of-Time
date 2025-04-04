# Introduction
 For gamers who enjoy experiencing virtual stories, the adventure game Echoes of Time provides a brief escape from reality into a new virtual world. Echoes of Time has value in its novelty, giving players the opportunity to experience its story for the first time--unlike other open-source adventure games, which many avid adventure gamers have already played before. This demo includes a moveable player character in a top-down world implemented with tilesets, three interactive objects (a 'weird clock', a door, and a cake), two rooms that the player can move between, and a simple puzzle. With this we're using the stylistic assets developed by our artist, Wil.

https://github.com/NoomMiner/Echoes-of-Time 

# Requirements
**Requirement**: Implement a Moveable Character.<br>
**Issue**: [Issue #1](https://github.com/NoomMiner/Echoes-of-Time/issues/1)<br>
Script for movement:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/39<br>
**Implemented by**: Yahir<br>
**Approved by**: Tyler<br>
Adjust GoDot node structure and script for compatability:<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/45<br>
**Implemented by**: Tyler<br>
**Approved by**: Yahir<br>
Fixed collision w/ walls<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/46<br>
**Implemented by**: Skyler<br>
**Approved by**: Tyler<br>

**Requirement**: Make the rooms interactable and responsive to change in them.<br>
**Issue**: [Issue #12](https://github.com/NoomMiner/Echoes-of-Time/issues/12)<br>
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

**Requirement**: Multiple rooms with smooth transitions between them<br>
Added cake room (including interactive door and cake) and implemented movement between rooms:<br>
**Issue**: [Issue #18](https://github.com/NoomMiner/Echoes-of-Time/issues/18)<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/54<br>
**Implemented by**: Skyler<br>
**Approved by**: Tyler <br>

**Requirement**: Add tests<br>
**Issue**: [Issue #63](https://github.com/NoomMiner/Echoes-of-Time/issues/63)<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/56<br>
**Implemented by**: Tyler<br>
**Approved by**: <br>

**Requirement**: Clean up Code<br>
**Issue**: [Issue #13](https://github.com/NoomMiner/Echoes-of-Time/issues/13)<br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/47 (add git ignore)<br>
**Implemented by**: Tyler<br>
**Approved by**: Yahir <br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/52 (add git ignore)<br>
**Implemented by**: Tyler<br>
**Approved by**: Skyler <br>
**Pull request**: https://github.com/NoomMiner/Echoes-of-Time/pull/58<br>
**Implemented by**: Skyler<br>
**Approved by**: Tyler<br>

**Requirement**: Stylistic Graphics <br>
**Issue**: [Issue #14](https://github.com/NoomMiner/Echoes-of-Time/issues/14)<br>
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

**Requirement**: Deploy game to itch.io <br>
**Issue**: [Issue #64](https://github.com/NoomMiner/Echoes-of-Time/issues/64)<br>
**Pull request**: N/A <br>
**Implemented by**: Tyler<br>
**Approved by**: N/A<br>


# Tests
The testing framework used was GUT (Godot Unit Testing). The test scripts can be viewed [Here](../EchoesofTimeGodot/test/unit).
## Example test
- Class Tested: [player.tscn](../EchoesofTimeGodot/player.tscn)
- Script: [test_movement.gd](../EchoesofTimeGodot/test/unit/test_movement.gd) <br>

This test ensured that the correct velocity was applied to the character depending on the direction pressed.
![Test Image](./unit_test_output.png)

# Technologies
- Git/Github: used for version control and communication
- Godot: We chose godot because it is open source and has a very active community that is dedicated to documentation. This made it a great choise for us, as we are all junior developers.
- GUT(Godot Unit Testing): GUT is the standard for unit testing in Godot. It additionally has a very easy to use interface.
- Itch.io: explained in next section

# Deployment
- [Link to itch.io](https://noomminer.itch.io/echoes-of-time) <br>
We have decided to deplot the product on the independent game development platform itch.io. We chose itch.io because it is a very popular platform for inde game developers who are looking to get a start. We will deploy by creating a page for the project on itch.io and uploading an executable.

# Licensing
The licensing we chose to adopt for our source code is the [GNU GPL v3](https://github.com/NoomMiner/Echoes-of-Time/blob/deliverable-4/LICENSE) license because it allows for our creative work to be protected, it ensures our game code can be preserved for the years to come, and it also encourges community collaboration which we find to be something import for this project.

# UX Design
We wanted the user to understand what keys to press when going over an item or accessing a doorway. To do that, we implemented a text box that appears telling the user what button to press and what the action is. We soon plan to implement more features to update the user interface.
![Image1](./d4_1.png)
![Image2](./d4_2.png)
![Image3](./d4_3.png)


# Lessons Learned
Our team learned how to create various objects that are interactable and how to create and design environments in the Godot engine. Our team worked hard throughout the process of creating our first release. Problems that arose during the process included lack of communication and scheduling difficulties. Moving forward, we will communicate more frequently and push work to GitHub more often.

# Demo
[Here](https://drive.google.com/file/d/1xDIINoCwLWYOs4SEFlpelnUAiyvW0-XD/view?usp=drive_link)

# Important Files
- [README](../README.md)
- [CONTRIBUTING](../CONTRIBUTING.md)
- [CODE OF CONDUCT](../CODE_OF_CONDUCT.md)

