class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
attr_reader :pegs
  def self.valid_pegs?(chars)
    chars.all? { |char| Code::POSSIBLE_PEGS.include?(char.upcase) }
  end

  def initialize(chars)
    if !Code.valid_pegs?(chars)
      raise "Should contains valid chars only" 
    else @pegs = chars.map(&:upcase)
    end
  end
  def self.random(lenth)
    array = Array.new(lenth){ Code::POSSIBLE_PEGS.keys.sample}
    Code.new(array)
  end
  
  def self.from_string(str)
    Code.new(str.split(""))
  end

  def [](indx)
    @pegs[indx]
  end
  
  def length
    @pegs.length
  end

  def num_exact_matches(codeon)
    r = (0...codeon.length).count {|i|   codeon[i] == @pegs[i]}

    return r
  end

  def num_near_matches(codeon)
      r = (0...codeon.length).count do |i| 
        @pegs.include?(codeon[i])
      end
      r - num_exact_matches(codeon)
    end

    def ==(codeon)
      codeon.length == self.length && self.num_exact_matches(codeon) == codeon.length
    end

end
