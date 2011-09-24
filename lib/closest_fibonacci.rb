class Integer

  def closest_fibonacci

    raise RangeError, "Cant call closest_fibonacci on negative numbers" if self < 0

    arr = [0,1]

    until arr.last > self do
      original_first_number = arr.first
      arr.reverse!
      arr[arr.length] = arr.first + original_first_number
    end

    arr.first

  end

end
