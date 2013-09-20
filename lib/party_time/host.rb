module PartyTime
  class Host
    def initialize(options)
       @data = PartyTime.request('host/', options)
    end
  end
end