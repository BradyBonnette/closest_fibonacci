class Integer

  def closest_fibonacci

    raise RangeError, "Cant call closest_fibonacci on negative numbers" if self < 0

    arr = [0,1]

    until arr[1] > self do
      n = arr.first
      arr.reverse!
      arr[1] = arr.first + n
    end

    arr.first

  end

end
