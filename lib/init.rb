require './lib/calculate'
# def meters_to_kilometers: (Float kilometers) -> ::Float
class Init
  attr_reader :value

  def do_calculate
    puts 'Enter function: '
    calc = Calculate.new(@value)
    unit = gets.chomp
    begin
      puts calc.send(unit)
    rescue StandardError
      puts 'I can: '
      puts 'meters_to_miles, meters_to_kilometers,'\
           ' kilometers_to_miles, kilometers_to_meters,'\
           ' miles_to_meters, miles_to_kilometers'
    end
  end

  def init_value
    puts 'Enter value: '
    @value = 0
    @value = gets.chomp.to_f while @value <= 0
    @value
  end

  def quit?
    puts 'Quit? Y/n'
    check_quit = gets.chomp

    if check_quit == 'Y'
      abort
    elsif check_quit != 'n'
      quit?
    end
  end
end
