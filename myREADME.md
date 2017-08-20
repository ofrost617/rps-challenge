# RPS Challenge #

## My approach ##

I prepared for the challenge by reading all of the instructions and supporting material throughly.

I then installed all necessary gems and created rps_web.rb. Within this file I created a get '/' do and began to create my web app.

Using RSpec and capybara I wrote tests for what I expected my app to do and used these tets to create my erb files and format my web app. 

Once I reached the stage where it was necessary to populate my erb files with instances of player, computer and game I used TDD to create these .rb and their relevant spec files.

I hit a hurdle when I couldn't get my computer_spec tests to pass, and having spent an excessive amount of time on it, I decided to halt the process as I felt I was not enhancing my learning and wa growing increaisngly frustrated. As such will be consulting my coach on Monday and my challenge remains incomplete.

I would have progressed by:
  using TDD to continue to develop my rps_web.rb and associated erb files so that upon player selection of their weapon, a random weapon was generated for the computer and the two weapons were evaluated to declare a winner on a '/winner' page within rps_web.rb.

Following on from this I would have ensured my code and tests were DRY and used doubles and stubs to ensure my code defended against edge cases and that my code was tested correctly.


## Contents ##

Lib folder containing:
    1. computer.rb
    2. game.rb
    3. player.rb

Spec folder containing:
    1. Features folder:
      a.  rps_web_spec.rb
    2. computer_spec.rb
    3. game_spec.rb
    4. player_spec.rb
    5. spec_helper.rb
  
 Views folder containing:
    1. index.erb
    2. ready.erb
    3. result.erb

Within the rps-challenge directory:
    config.ru
    Gemfile
    myREADME.md
    rps_web.rb

## Authors ##

Olivia Frost

This repository was forked and then cloned from makersacademy/rps-challenge