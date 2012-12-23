module Starbucks
  class Result < Hash
    def address
      fetch("WalkInAddress")
    end

    def name
      fetch("Name")
    end

    def miles_away
      meters = address.fetch("Distance")
      # 1 mile = 1609.344 meters
      meters.to_f / 1609.344
    end
  end
end
