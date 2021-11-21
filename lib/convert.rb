class Convert
  def initialize(value)
    @value = value
  end

  def meters_to_miles
    (@value / 1609).round(3)
  end

  def meters_to_kilometers
    (@value / 1000.0).round(3)
  end

  def kilometers_to_miles
    (@value / 1.609).round(3)
  end

  def kilometers_to_meters
    (@value * 1000.0).round(3)
  end

  def miles_to_meters
    (@value * 1609.0).round(3)
  end

  def miles_to_kilometers
    (@value * 1.609).round(3)
  end
end
