# Q0: Why is this error being thrown?
Becasue there's no model for Pokemon.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The HomeController uses sample to pick a pokemon from the database. Common factor is that they have no trainer assigned.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
After creating a button, we call the capture_path specified in routes.rb by passing in the ID of the pokemon to capture. The ID is added to params for the capture method. Then it passes in the ID of the pokemon given in HomeController. This pases it to the PokemonsController "capture" method and assigns the currently logged in trainer's id as the pokemon's associated trainer ID.

# Question 3: What would you name your own Pokemon?
Maxi

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the redirect_to into a damage_path that corresponded to the new path I created that calls the PokemonsController damage method

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It shows error messages on the form because application.html.erb is rendered for every page. flash errors are rendered when the page is refreshed.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
