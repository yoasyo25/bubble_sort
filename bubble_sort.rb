require "pry"

class BubbleSort

  def sort(unsorted)
    n = unsorted.length

    loop do

      sort = false

      (n-1).times do |index|
        if unsorted[index+1] < unsorted[index]
          unsorted[index+1], unsorted[index] = unsorted[index], unsorted[index+1]
          sort = true
        end
      end

      break if not sort
    end

    print unsorted
  end
end

sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])
sorter.sort([5, 4, 0, 1, 2, 3])

------------------------------------------------------------------------

class BubbleSorter

  def sort(unsorted)
      sorted = false
      until sorted
        sorted = true
          (unsorted.count - 1).times do |index|
            if unsorted[index] > unsorted[index + 1]
              unsorted[index], unsorted[index + 1] = unsorted[index + 1], unsorted[index]
              sorted = false
            end
          end
      end
    unsorted
  end

end

sorter = BubbleSorter.new
print sorter.sort(["d", "b", "a", "c"])
print sorter.sort([5, 4, 0, 1, 2, 3])
#
----------------------------------------------------------------------------

class BubbleSorting

  def sort(unsorted)
    unarranged = true
      while unarranged
        unarranged = false
        (unsorted.count - 1).times do |index|
          if unsorted[index] > unsorted[index + 1]
            unsorted[index], unsorted[index + 1] = unsorted[index + 1], unsorted[index]
            unarranged = true
          end
        end
      end
    unsorted
  end
end


sorter = BubbleSorting.new
print sorter.sort(["d", "b", "a", "c"])
print sorter.sort([5, 4, 0, 1, 2, 3])
