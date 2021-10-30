require './lib/init'
require './lib/interface'

class App
  def run
    init = Init.new
    loop do
      value = init.init_value
      break if init.quit?(value)

      call_func_name = init.init_call_func_name
      break if init.quit?(call_func_name)

      calc = Interface.new(call_func_name, value)
      puts calc.do_calculate
    end
  end
end
