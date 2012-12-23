module Starbucks
  class Result < Hash
    def address
      fetch("WalkInAddress")
    end

    def name
      fetch("Name")
    end
  end
end
