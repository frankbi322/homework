class Queue

  def initialize(queue = [])
    @queue= queue
  end

  def dequeue
    @queue.shift
  end

  def enqueue(el)
    @queue<<el
  end

  def show
    @queue.dup
  end

end
