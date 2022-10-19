module Algorithms
  module InsertionSort
    module_function

    # @param [Array] collection is an unsorted array
    def main(collection)
      size = collection.length
      j = 1

      while j < size
        key = collection[j]

        i = j - 1

        while i >= 0 && collection[i] > key
          collection[i + 1] = collection[i]

          i -= 1
        end

        collection[i+1] = key

        j += 1
      end

      collection
    end
  end
end