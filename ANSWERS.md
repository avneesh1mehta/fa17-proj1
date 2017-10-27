# Q0: Why is this error being thrown?

The Pokemon model was not defined.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear?

 In the home controller, trainer-less pokemon are created and sampled every time the page is reloaded to display a random pokemon. They are all trainer-less or wild pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This creates a button that says "Throw a Pokeball," which creates a patch request to the page from capture_path and sends the id of the pokemon to the capture method ok the pokemon controller.


# Question 3: What would you name your own Pokemon?

 Calkarp (Cal and Magikarp mixed together since they both struggle endlessly lol).


# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed trainer_path into the redirect_to. I passed the id of the trainer inside that path so that the redirect would get the page of that trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

This line adds an error to flash. In application.html.erb, flash is checked for any errors and displayed as a sentence when the apllication.html.erb layout is rendered.


# Give us feedback on the project and decal below!

The project made me think about pokemon so much that I played Pokemon FireRed on an emulator after ten years of not playing the game. The decal is a little lacking in guidance for newbies to web development, but overall it is pretty good.


# Extra credit: Link your Heroku deployed app
