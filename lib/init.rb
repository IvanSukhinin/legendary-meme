require './lib/calculate'

class Init
  attr_reader :value

  def do_calculate
    puts 'Enter function: '
    calc = Calculate.new(@value)
    unit = gets.to_s.chomp
    begin
      res = calc.send(unit)
      puts res
    rescue StandardError
      puts 'I can: '
      puts 'meters_to_miles, meters_to_kilometers,'\
           ' kilometers_to_miles, kilometers_to_meters,'\
           ' miles_to_meters, miles_to_kilometers'
      res = -1
    end
    res
  end

  def init_value
    loop do
      puts 'Enter value: '
      @value = gets.to_s.chomp.to_f
      break if @value > 0

      puts 'Value must be > 0'
    end
    @value
  end

  def quit?
    puts 'Quit? Y/n'
    gets.to_s.chomp.downcase == 'y'
  end
end
