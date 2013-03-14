module A4nt
  class Announcement < ActiveRecord::Base
    attr_accessible :body, :end_time, :position, :start_time, :title
  end
end
