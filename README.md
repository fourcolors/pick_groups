Pick Groups
===========

A custom enumerable iterator that lets you group arrays by values

## INSTRUCTIONS
pick_groups add functionality to the an Enumerable item. This will group items based on your requirements. For example:

```ruby
[2, 3, 5, 3, 5].pick_totals{|total| total == 10}  #=> [[5, 5], [2, 3, 5]]
```

You can also do

```ruby
["eat", "cat", "food"].pick_groups{|sentence| sentence.length < 7}.inspect #=> [["eat"], ["cat"], ["food"], ["cat", "eat"]]
```

