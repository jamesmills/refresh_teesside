class Event < ActiveRecord::Base
  
  def prev
    begin
      Event.find(self.id - 1)
    rescue ActiveRecord::RecordNotFound
      Event.first
    end
  end

  def next
    begin
      Event.find(self.id + 1)
    rescue ActiveRecord::RecordNotFound
      Event.last
    end
  end  
  
end
