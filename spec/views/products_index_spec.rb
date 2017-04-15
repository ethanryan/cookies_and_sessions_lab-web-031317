###commenting out this spec, via classmate's and TA's suggestion:

##uncommented after seeing how classmates solved this lab

require 'rails_helper'

RSpec.describe "products/index", :type => :view do
  it "shows everything in the cart" do
    assign(:cart, ['apples', 'bananas', 'pears'])
    render
    expect(rendered).to include 'apples'
    expect(rendered).to include 'bananas'
    expect(rendered).to include 'pears'
  end
end
