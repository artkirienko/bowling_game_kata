class BowlingGame
  attr_accessor :r

  def initialize
    @i = 0
    @result = 0
    @step = 1
  end

  def rolls(r)
    @r = r
    while @i < r.count && @step <= 10
      @result += if strike?
                   strike
                 elsif spare?
                   spare
                 elsif usual?
                   usual
                 end
      @step += 1
    end
    @result
  end

  def strike?
    r[@i] == 10
  end

  def spare?
    r[@i].to_i + r[@i + 1].to_i == 10
  end

  def usual?
    r[@i].to_i + r[@i + 1].to_i < 10
  end

  def strike
    res = (10 + r[@i + 1].to_i + r[@i + 2].to_i)
    @i += 1
    res
  end

  def spare
    res = (10 + r[@i + 2].to_i)
    @i += 2
    res
  end

  def usual
    res = (r[@i].to_i + r[@i + 1].to_i)
    @i += 2
    res
  end
end
