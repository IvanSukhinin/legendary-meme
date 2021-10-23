require './lib/init'

class App
  def run
    init = Init.new
    loop do
      init.init_value
      init.do_calculate
      abort if init.quit?
    end
  end
end
