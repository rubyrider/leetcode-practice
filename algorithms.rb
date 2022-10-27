require 'bundler'

Bundler.setup

module Algorithms
  autoload :InsertionSort, './algorithms/insertion-sort'
  autoload :BinarySearch, './algorithms/binary-search'
  autoload :MergeSort, './algorithms/merge-sort'
end