# Description

# Architecture
![Architecture Diagram](Architecture_Diagram_D5.png)
# Class Diagrams
![Class Diagram](UML_Class_D5.png)
**Note**: Godot base classes are not included in the diagram for readability
# Sequence Diagrams

# Design Patterns

# Design Principles
### Single Responsibility Principle:
*In our game architecture, each class focuses on a single aspect of the game’s functionality.* 
#### 1\. The QuestManager only handles quest related operations using methods like startQuest(), setNextQuest() and completeQuest(), everything quest related is handled within the QuestManager class. 
#### 2\. The same goes for the DialogueManager class. Their sole purpose is to manage dialogue flow using methods like startDialogue(), selectOption(), and endDialogue() 
#### 3\. The SaveManager class focuses solely on saving/loading the game state using initializeGame(), saveGameState() and loadGameState().


### Open/Closed Principle:
*The design is structured to be extended without modification of existing code.* 
#### 1\. The Entity class serves as a base with onInteract() that subclasses Player, NPC, and Interactable extend without modifying the existing code.
#### 2\. Intractable interface enables extension through various interaction handlers like _on_area_2d_body_entered()  and _on_area_2d_body_exited()  
#### 3\. The Quest system is designed to be extended with new quest types without changing the QuestManager class.


### Liskov Substitution Principle: 
*The class hierarchy ensures derived classes can be used in place of their base classes.*
#### 1\. Both Player and NPC inherit from Entity and can be stored in the Scene's entities: List<Entity> collection
#### 2\. Different CollisionShape2D objects can be processed uniformly through the colliders collection in Scene
#### 3\. Various save states from Player, Inventory and quest systems can all be handled by the SaveManager

### Interface Segregation Principle:
*The diagram describes specialized interfaces focused on specific game functions.*
#### 1\. Separate HealthDisplay and QuestDisplay interfaces rather than a single monolithic UI interface
#### 2\. Interactable with specific interaction methods rather than implementing the full Entity interface
#### 3\. RichTextLabel used for specific purposes in both dialogue and quest displays rather than one generic text interface

### Dependency Inversion Principle:
*High level game modules depend on abstractions shown in the relationships between manager classes.*
#### 1\. MainNode depends on abstract managers such as LevelManager, PlayerHUD, and SaveManager rather than their implementations
#### 2\. PlayerHUD references display abstractions like HealthDisplay, InventoryDisplay, and QuestDisplay rather than concrete classes
#### 3\. Scene works with abstract Entity objects through its entities: List<Entity> rather than specific entity types
