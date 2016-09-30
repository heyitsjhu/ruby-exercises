module BookKeeping
  VERSION = 4
end

class Gigasecond

  def self.from(date)
    Time.at(date + 1_000_000_000)
  end

end