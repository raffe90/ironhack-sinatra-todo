class Task
  attr_reader :content, :id, :updated_at, :created_at
  @@current_id = 1
  def initialize(content)
      @content = content
      @id = @@current_id
      @@current_id += 1
      @completed = false
      @created_at = Time.now
      @updated_at = nil
  end

  def complete?
  	@completed
  end

  def complete!
  	@complete = true
  end

  def make_incomplete!
  	@complete = false
  end

  def update_content!(content)
  	@updated_at = Time.now
  	@content = content
  end
end