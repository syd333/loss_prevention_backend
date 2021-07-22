class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def created_at
    attributes['created_at'].strftime("%m.%d.%Y ")
  end
  
end
