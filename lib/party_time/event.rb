module PartyTime
  class Event
    def initialize(options)
       @data = PartyTime.request('event/', options)
    end
  end
end