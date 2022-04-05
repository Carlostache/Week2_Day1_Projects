# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self == []
        self.max - self.min
  end

  def average
    return nil if self == []
    (self.sum.to_f / self.length)
  end

  def median
    return nil if self == []
    sorted = self.sort
    midpoint = (sorted.length / 2).to_i

    if sorted.length % 2 != 0
        return sorted[midpoint]
    else 
        return (sorted[midpoint - 1].to_f + sorted[midpoint]) / 2
    end

  end

  def counts
        return {} if self == []
        
        count = Hash.new(0)

        self.each do |el|
            count[el] += 1
        end
      count
   end

   def my_count(arg)
        count = Hash.new(0)

        self.each do |ele|
            count[ele] += 1
        end

        count[arg]
    end

    def my_index(arg)

        self.each_with_index do |el, i|
            if arg == el
                return i 
            end
        end
       nil
    end

    def my_uniq
        unqiue = []
        counts = Hash.new(0)

        self.each do |el|
            counts[el] += 1
        end

        counts.keys
    end

    def my_transpose
        new_arr = []

        (0...self.length).each do |row|
            new_row = []

            (0...self.length).each do |col|
                new_row << self[col][row]
            end
            new_arr << new_row
        end
        new_arr
    end

end


