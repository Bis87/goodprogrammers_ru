class Buratino
  def initialize
    @nose_length = 0
  end

  def increase(value)
    @nose_length+=value
  end

  def decrease(value)
    @nose_length-=value
  end

  def nose_length
    @nose_length
  end
end