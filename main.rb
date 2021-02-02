require './game'
require './player'
require './turn'

# Eg Prompt

=begin

Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
--- NEW TURN ---
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2 3/3
--- NEW TURN ---
... some time later ...
Player 1 wins with a core of 1/3
--- GAME OVER ---
Good Bye!

=end

=begin

Tips!

Create a new project folder and track it using git; publish it to GitHub
This project will contain multiple classes. Each class should be defined in its own rb file. You should not put any other code outside the class definition
Define a main.rb file that will require all the other files
Use gets.chomp to get input from users and puts for output
Isolate your I/O logic to one or two classes. Don't allow all your classes to interact (gets/puts) with the User
Remember to build incrementally, writing small amounts of runnable code instead of writing out a whole bunch of classes/methods that are not yet testable/runnable.
Use puts, raise some_val.inspect, and byebug to help with debugging

=end