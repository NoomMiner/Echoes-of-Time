**Procedure for manually testing - conduct before committing or making a pull request, and before merging a pull request into the main project.**
<br><br>
1. Load main scene, ensure graphics work smoothly and player is on center of left hand side of screen.
2. Use arrow keys to move around. Player should move intuitively, with animated sprite updating appropriately. Run into walls to ensure collision works properly.
3. Without stepping over the clock sprite, walk next to the door. Text should appear saying that the door is locked. Text should disappear when you leave the door. Pressing 'q' while next to the door should do nothing.
4. Walk over the clock sprite. Text should appear stating to press 'q' to use the clock. Walk around the room and next to door to ensure door text is unchanged.
5. Press q. In one playthrough, press 'q' while next to the door to ensure the text switches smoothly. In another playthrough, press 'q' while away from the door.
6. Walk around the room, next to and away from the door. When, and only when, the player is next to the door, text should appear asking whether to use the key. Try pressing 'q' away from the door; nothing should happen.
7. Press 'q' while next to the door. Player should be taken to the next room.
8. When next to the door, text should appear offering to restart. In one playthrough, ensure this works smoothly at this stage.
9. Go up to cake sprite. Text should appear (offering to eat cake). Follow the instructions to eat the cake. The cake sprite should change.
10. Walk around the room, and try pressing q elsewhere and at the location of the cake sprite. When pressing 'q' by the cake, text should appear saying it is already eaten.
11. Try restarting by going up to the door and pressing 'q'.
