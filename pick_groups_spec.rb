load 'pick_groups.rb'

describe Enumerable, "#pick_groups" do 
  context "no block arguments are given" do 
    let!(:array){[1, 4, 5, 2, 5, 3]}

    it "returns the original array" do 
      array.pick_groups.should =~ array
    end
  end
  context "block arguments are given" do
    let!(:array){[1, 4, 5, 2, 5, 3]}

    it "returns unique arrays grouped by the evaluated block expressions total" do
      array.pick_groups {|total| total == 10}.should =~ [[1, 2, 3, 4], [2, 3, 5], [1, 4, 5], [5, 5]]
    end
  end
end
