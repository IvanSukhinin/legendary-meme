require './lib/calculate'

class Interface
  def initialize(call_func_name, value)
    @call_func_name = call_func_name
    @calc = Calculate.new(value.to_f)
  end

  def do_calculate
    functions = {
      1 => 'meters_to_miles',
      2 => 'meters_to_kilometers',
      3 => 'kilometers_to_miles',
      4 => 'kilometers_to_meters',
      5 => 'miles_to_meters',
      6 => 'miles_to_kilometers'
    }

    @calc.send(functions[@call_func_name.to_i])
  end
end
