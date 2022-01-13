## Game Development
- learn about game engines
- learn about scripting
- setup a development environment on your computer
- begin a project

### What is a [game engine](https://en.wikipedia.org/wiki/Game_engine)?
- an engine provides an array of implementations for developers making a game
  - usually based on expected needs of the developer community
  - and based around contemporary games
- problems that an engine can address
  - [agents](https://towardsdatascience.com/an-introduction-to-unity-ml-agents-6238452fcf4c?gi=f1720cf5170f)
    - how do I react to the player in my game?
  - [physics](https://youtu.be/ogsL_Xuv2kE?t=10)
    - how do I handle forces and collisions in the game?
  - sound
    - how do I prompt a sound to happen when the player does this?
  - graphics rendering
    - how do I draw what's happening in my game?
  - networking
    - how can my players interact with each other?
  - and much more..

### Interacting with an engine
- UI
  - most engines provide a graphic interface for making your game
  - access to tools for dealing with parts of the engine more easily
- programming and scripting
  - most engines provide a scripting environment
  - developers create code that the engine 'runs'
- scripts typically host the 'content' of your game
  - used to dictate behaviors specific to the game you're making
  - you can script events, responses, environmental 

### Engine options
- [Unity](https://store.unity.com/products/unity-personal)
- [Unreal](https://www.unrealengine.com/en-US/unreal)
- [Cocos2d-x](https://www.cocos.com/en/cocos2dx)
  - open-source
  - provides engine implementation in C++ and supports JavaScript, C++ or Lua for scripting
- [phaser](https://phaser.io/)
  - open-source
  - implemented with JavaScript, uses JavaScript or TypeScript
- [Godot](https://godotengine.org)
  - open-source
  - is implemented with C++, and provides GDScript, C#, visual scripting, and numerous others using a special script engine

### We'll use [Godot](https://docs.godotengine.org/en/stable/about/introduction.html)
- We'll use [GDScript](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_basics.html) when scripting for Godot
  - can also use C# - download the [Mono](https://godotengine.org/download) version of the Godot engine
- provides a development environment tailored for beginners
- well documented, [open source](https://github.com/godotengine/godot)
- Community resources like [GDQuest](https://www.gdquest.com/tutorial/godot/learning-paths/getting-started-in-2021/) improve the beginner experience significantly
  - offer extensive tutorials and cater to completely beginner experiences with game development

### Required tools
- The Godot engine - which includes an editor that we'll use to make the game
    can be downloaded at the Godot engine [site](https://godotengine.org/download)
- an additional text editor that you like for working with extraneous files

### Getting [started](https://docs.godotengine.org/en/stable/getting_started/step_by_step/index.html)
- Godot provides good documentation for getting setup and creating a project
- A 3D workspace is open by default
  - this series will produce a 2D game, switch to 2D with the center top control
- Once inside the editor
  - menus to the left
  - workspaces at the top
  - playtest controls at the top right
- You can create a 2D scene
  - scenes consist of nodes, associated scripts, and make up the base ideas in your game
  - create a scene and save - this will save our project so far
- Discuss scenes in Godot next time, and create one

### Game concept
- if you have any ideas, submit them to me at coder@nhfpl.org
