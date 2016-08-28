class WelcomeController < ApplicationController

  def index
  render json: {'Welcome controller': 'welcome to the FoodLib API'}
end

def about
  render json: {'Welcome controller': 'ABOUT US route'}
end

def contact
  render json: {'Welcome controller': 'CONTACT us route'}
end

end
