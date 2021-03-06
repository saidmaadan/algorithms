class MyHash
  def initialize
    @pairs =Array.new(4) {[]}
    @key_count = 0
  end

  def find_index(key)
    key.hash % @pairs.length
  end

  def []=(key, value)
    update_hash(@pairs.length*2) if @pairs.length/2 <= @key_count
      index = find_index(key)
    @pairs[index].each do |pair|
      pair[-1] = value if pair.first ==key
    end
    @pairs[index] << [key, value]
    @key_count
  end

  def [](key)
    index = find_index(key)
    @pairs[index].last if @pairs[index].first ==key
    @pairs[index].each do |pair|
     return pair[-1] if pair.first ==key
    end
    return nil
  end

  def update_hash(new_size)
    old_pairs = @pairs
    @pairs =Array.new(new_size) {[]}
    @key_count = 0
    old_pairs.each do |pairs_array_at_index|
      pairs_array_at_index.each do |pair|
        key = pair.first
        value = pair.last
        self[key] =value
      end
    end
  end
end
