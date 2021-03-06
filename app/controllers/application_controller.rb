class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def cart
    session[:cart] ||= [] #returning the cart, or an empty array if nothing's in the cart
  end

  #using the session method in #cart controller action above

  #via lesson:

  # Rails manages all session data in a single cookie,
  # named _YOUR_RAILS_APP_NAME_session.
  # It serializes all the key/value pairs you set with session,
  # converting them from a Ruby object into a big string.
  # Whenever you set a key with the session method,
  # Rails updates the value of its session cookie
  # to this big string.

end #end class


# INTRODUCTION

# The Rails session method gives us access to the Rails session.
# The session is a datastore implemented with cookies.
# You can store simple data structures in the session.
# Here's how the site will work:
# The page has an input box on it.
# The user types in the item they want and clicks add to cart.
# The item is added to their cart. The page shows everything in the user's cart.

# INSTRUCTIONS

# Create the cart method in ApplicationController#cart.
# Create a Products controller with two actions, index and add.
# Create views using the feature tests as your guide.
# The page should have, at a minimum:
# a text box where the user can enter the name of a product,
# a submit button that adds it to their cart,
# and a display of what's in the cart.
