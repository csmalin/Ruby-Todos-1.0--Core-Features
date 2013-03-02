ID = 0 

class Task

  attr_accessor :completed_at
  attr_reader :id, :description, :created_at

  def initialize(args)
    @id = args["id"]
    @description  = args["description"]
    @completed_at = args["completed_at"] || nil
    @created_at   = Time.now
  end
   
  def complete
    @completed_at = Time.now
  end

  def completed?
    @completed_at != nil 
  end

  def uncomplete
    @completed_at = nil
  end

  def to_s
    "#{completed? ? '[x]' : '[ ]'} #{@id}: #{@description}"
  end

end
