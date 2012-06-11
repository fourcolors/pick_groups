# INSTRUCTIONS
# pick_totals add functionality to the and Enumerable item.
# This will group items based on your requirements. For example: 
# [2, 3, 5, 3, 5].pick_totals{|total| total == 10}  #=> [[5, 5], [2, 3, 5]]
# You can also do
# ["eat", "cat", "food"].pick_groups{|sentence| sentence.length < 7}.inspect #=> [["eat"], ["cat"], ["food"], ["cat", "eat"]]

module Enumerable 
  def pick_groups
    if block_given?
      matches = []
      permutations = []

      self.each_index do |i|
        permutations += self.permutation(i+1) do |p| 
          matches << p.sort! if yield(p.reduce(:+))
        end.to_a
      end

      matches.uniq
    else
      self
    end
  end
end
