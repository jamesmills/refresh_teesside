class Event < ActiveRecord::Base
  default_scope :order => 'created_at ASC'
  
  def to_param
    "#{id}-#{title.parameterize}"
  end

  def prev
    begin
      Event.find(self.id - 1)
    rescue ActiveRecord::RecordNotFound
      if Event.first
        Event.first
      else
        ""
      end
    end
  end

  def next
    begin
      Event.find(self.id + 1)
    rescue ActiveRecord::RecordNotFound
      if Event.last
        Event.last
      else
        ""
      end
    end
  end  
  
end
