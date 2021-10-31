require './lib/init'
require './lib/calculation'

class App
  def run
    init = Init.new
    loop do
      value = init.init_value
      return if init.quit?(value)

      call_func_name = init.init_call_func_name
      return if init.quit?(call_func_name)

      calc = Calculation.new(call_func_name, value)
      puts calc.do_calculate
    end
  end
end
