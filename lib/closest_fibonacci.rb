class Integer
  def closest_fibonacci
    raise RangeError, "Cant call closest_fibonacci on negative numbers" if self < 0
  end
end
