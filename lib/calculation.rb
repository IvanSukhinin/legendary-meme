require './lib/calculate'

class Calculation
  def initialize(call_func_name, value)
    @call_func_name = call_func_name.to_i
    @calc = Calculate.new(value.to_f)
  end

  def do_calculate
    func_name = function_name
    res = 0
    begin
      res = @calc.send(func_name)
    rescue StandardError
      res = -1
    end
    res
  end

  private

  def function_name
    functions = {
      1 => 'meters_to_miles',
      2 => 'meters_to_kilometers',
      3 => 'kilometers_to_miles',
      4 => 'kilometers_to_meters',
      5 => 'miles_to_meters',
      6 => 'miles_to_kilometers'
    }

    return -1 unless functions.include? @call_func_name

    functions[@call_func_name]
  end
end
