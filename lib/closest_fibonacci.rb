class Integer

  def closest_fibonacci

    raise RangeError, "Cant call closest_fibonacci on negative numbers" if self < 0

    arr = [0,1]

    until arr.last > self do
      number_to_add = arr.first
      arr.reverse!
      arr[arr.length] = arr.first + number_to_add
    end

    arr.first

  end

end
