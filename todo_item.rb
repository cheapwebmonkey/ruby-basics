class TodoItem
  attr_reader :name
  
  def initialize(name)
    @name = name
    @complete = false
  end
  
  def to_s
    if complete?
      "[C] #{name}"
    else
      "[I] #{name}"
    end
  end
  
  def complete?
    @complete
  end
  #bang method !   
  def mark_complete!
    @complete = true
  end
end