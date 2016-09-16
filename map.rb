class Map

  def initialize
    @map= {}
  end

  def assign(key,value)
    pair_index = @map.index {|pair| pair[0] == key}

  end

  def lookup(key)
    @map.each {|pair| return pair[1] if pair[0]== key}
  end

  def remove(key)
    @map.reject!{|pair| pair[0] == key}
  end

  def show
    deep_dup(@map)
  end

  private

  def deep_dup(arr)
    new_array = []
    @map.each do |el|
      if el.is_a?(Array)
        deep_dup(el)
      else
        new_array << el
      end
    new_array
    end
  end

end
