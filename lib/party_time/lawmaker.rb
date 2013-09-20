module PartyTime
  class Lawmaker
    def initialize(options)
       @data = PartyTime.request('lawmaker/', options)
    end
  end
end