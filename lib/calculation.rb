require './lib/convert'

class Calculation
  def initialize(call_func_name_index, value)
    @call_func_name_index = call_func_name_index.to_i
    @convert = Convert.new(value.to_f)
  end

  def do_calculate
    function_name = set_function_name
    res = 0
    begin
      res = @convert.send(function_name)
    rescue StandardError
      res = -1
    end
    res
  end

  private

  def set_function_name
    functions = %w[meters_to_miles meters_to_kilometers
                   kilometers_to_miles
                   kilometers_to_meters
                   miles_to_meters
                   miles_to_kilometers]

    functions_index_range = 1..6

    return -1 unless functions_index_range.include?(@call_func_name_index)

    functions[@call_func_name_index - 1]
  end
end
