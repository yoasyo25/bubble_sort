
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
