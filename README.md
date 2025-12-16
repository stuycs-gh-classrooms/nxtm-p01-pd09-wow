[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/QTULg0OX)
# NeXtCS Project 01
### thinker0: Aarushi Jain
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases.  
The first phase will be to work on this document. 
* Use markdown formatting.
* For more markdown help
  - [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or
  - [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Atari Breakout

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.
- Ball class 
- Paddle Class
- Brick class
- Game Class
- Driver
- move ball and paddle
- check for collisions to check if a brick is destroyed
- reset and pause the game
- ball bounces against the top and side walls
- if ball  goes past the bottom side lose a life.
- 

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

- Color of the breakout
- fun paddle?
- fun ball?

### Array Usage
How will you be using arrays in this project?

1D Array:
- color[] BrickColor -> for the colors of the rows of bricks

2D Array:
- Grid of bricks (Brick[][] Bricks)
    ```
    for (int r = 0; r < rows; r++){
      for (int c = 0; c < cols; c++){
        bricks[r][c] = newBrick(' ');
    }
    }

    if (bricks[r][c] alive) bricks[r][c].display();
    ```


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
keyPressed commands
- Left and Right arrows -> move paddle around
- space key -> pause game
- r key -> call resetGame()

Mouse Control:
- Mousemoved()
    - mouse moves left and right - paddle follows mouse movement
 ```
void mouseMoved(){
paddle.move(mouseX);
}
```
- Mouse pressed:
    - nothing right now- maybe pause the game? 


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

CLASS Ball
- Instance variables:
  - (x, y) position
  - xspeed, yspeed -> speed
  - d -> diameter
- METHODS
  - display()
  - move()
  - collisions()
      - collisions with the boxes
      - collision with the walls
      - collision with paddle  

CLASS Paddle
- Instance variables:
  - x -> Position
  - size (width & height)
  - 
- METHODS
  - display()
  - move()

 
CLASS Brick
- Instance variables:
  - (x, y) -> position
  - size (width & height)
  - boolean alive
     
- METHODS
  - display()
  - hit() -> did it get hit? set boolean to dead (so brick disappears)
 
CLASS Game
- Fields
  - Ball Ball
  - Paddle Paddle
  - Brick[][] Brick
  - Boolean paused -> for if the game is paused or not
      - if boolean paused is true-> do not move anything -> display a pause symbol??
  - Int lives
      - if lives-- then reset ball
      - if lives = 0; then end game? 
     
- METHODS
  - resetGame()
      - resets ball position
      - brick array
      - lives
      - state
  - resetBall()
  - checkWin()
  - checkEnd()

TO CONTINUE GAME: 
  checkWin()
  display "You Win" and say press r for restart
