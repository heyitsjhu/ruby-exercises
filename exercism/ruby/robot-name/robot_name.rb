module BookKeeping
  VERSION = 2
end

class Robot

  attr_reader :new_or_reset

  @@used_names = []

  def initialize
    @new_or_reset = true
    @name = ""
  end

  def name
    if new_or_reset?
      loop do
        @name = ""
        2.times { @name << rand(65..90).chr }
        3.times { @name << rand(0..9).to_s }
        break unless @@used_names.include?(@name)
      end
      @@used_names << @name
      @new_or_reset = false
    end  
    return @name
  end

  def reset
    @new_or_reset = true
    @@used_names.delete(@name)
    @name = ""
  end

  def new_or_reset?
    @new_or_reset
  end

end
