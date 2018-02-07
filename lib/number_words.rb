class Number
  def initialize(number)
    @number = number
  end

  def singles
    singles = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    singles.fetch(@number)
  end

  def tens
    tens = {20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    tens.fetch(@number)
  end

  def hundreds
    hundreds = {100 => "one hundred", 200 => "two hundred", 300 => "three hundred", 400 => "four hundred", 500 => "five hundred", 600 => "six hundred", 700 => "seven hundred", 800 => "eight hundred", 900 => "nine hundred"}
    hundreds.fetch(@number)
  end

  def thousands
    thousands = {1000 => "one thousand", 2000 => "two thousand", 3000 => "three thousand", 4000 => "four thousand", 5000 => "five thousand", 6000 => "six thousand", 7000 => "seven thousand", 8000 => "eight thousand", 9000 => "nine thousand"}
    thousands.fetch(@number)
  end

  def main_function
    if @number> 999
      self.thousands
    elsif @number> 100
      self.hundreds
    elsif @number> 20
      self.tens
    elsif 1<@number<19
      self.singles
    end
  end
  puts 'give me a number'
  name = gets.chomp
  num = Number.new(name.to_i)
  puts num.main_function()


end
