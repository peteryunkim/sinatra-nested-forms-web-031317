require 'pry'
class Pirate

  attr_accessor :name, :weight, :height

  def initialize(params)
    @name = params["name"]
    @weight = params["weight"]
    # binding.pry
    @height = params["height"]
  end

end
