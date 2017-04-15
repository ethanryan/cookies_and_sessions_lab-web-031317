class ProductsController < ApplicationController

  def index
    @cart = cart
    #@cart instance variable on the left
    #is being assigned the return value of
    #our cart method within application_controller on the right,
    #which will be either an empty array or an array full of strings
  end

  def add #each string is a product
    cart << product_params #product_params are set in private method below
    redirect_to :products
  end

  private

  def product_params
    params.require(:product)
  end

end #end of class

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
