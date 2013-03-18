module A4nt
  class Announcement < ActiveRecord::Base
    attr_accessible :body, :end_time, :position, :start_time, :title, :target
    TARGETS = %w(all nonmember member)

    validates :title, :body, :start_time, :end_time, :position, :target, presence: true
    validates :target, inclusion: { in: TARGETS }

    scope :active, -> { where(["start_time <= ? AND end_time >= ?", Time.now, Time.now]) }
    scope :newer, -> { active.order('position ASC') }
  end
end
