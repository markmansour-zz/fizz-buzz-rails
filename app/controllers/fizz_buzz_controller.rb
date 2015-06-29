class FizzBuzzController < ApplicationController
  def index
    @fb = FizzBuzz.new
  end
end
