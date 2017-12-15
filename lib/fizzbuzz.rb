class Fizzbuzz

  attr_reader :items
  def initialize(max_value)
    @items = []
    1.upto max_value do |value|
      item = value
      fizz_buzz_string = ""

      fizz_buzz_string = "fizz" if value.modulo(3) == 0
      fizz_buzz_string += "buzz" if value.modulo(5) == 0
      # fizz_buzz_string = "fizzbuzz" if value.modulo(15) == 0


      item = fizz_buzz_string unless fizz_buzz_string.empty?
      items << item
    end
  end

end
