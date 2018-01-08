
How to Build a CLI Gem - Project Outline

1. Plan your gem, imagine the interface the user is going to use while interacting with your gem  
  - A command line interface for Aquazzura shoes, where user can sort by color, heel height or shoe type
  - prompt the user with a greeting
  - What type of occassion are you shopping for?
  - What color shoes?
  - What heel height? 
  - Example output: 
  Based on your preferences, here are a few options that would perfect for you!
  
    1. Casablanca, Pump, 6 in, Red - $750 
    2. Brooklyn Bootie, Red, $495
    3. Ava Plateau, Red, $570
    
  **you may be able to eliminate the color from the output, since the user entered color as a preference**
    
    ** As you are thinking about how these parts will interact with each other, get something working quickly, by not focusing on the methods needed to display the info, i.e. use puts statements with the info** 
  Ex. display 
    
    Black, heel shoe with bow $750 
    
2. Start with the project structure - Google/Research 
  - Questions to ask Google:
    - How do I make a CLI gem?
    - Examples of gems
  - test CLI in command line with simple "puts" to make sure everything is connected
  - create a sample class to add to bin and run from command line
  - as you build, test, test, TEST!
  
3. Start with the entry point - the file run
4. Force that to build the CLI interface
5. Stub out the interface
6. Start making things real 
7. Discover objects 
  - How will each object work together?
8. Program 