module A4nt
  class Announcement < ActiveRecord::Base
    module Target
      ALL = 'all'
      NON_MEMBER = 'nonmember'
      MEMBER = 'member'

      def self.all
        self.constants.map { |name| self.const_get(name) }
      end
    end

    validates :title, :body, :start_time, :end_time, :position, :target, presence: true
    validates :target, inclusion: { in: Target.all }

    scope :active, -> { where(["start_time <= ? AND end_time >= ?", Time.now, Time.now]) }
    scope :newer, -> { active.order('position ASC') }
    scope :non_members, -> { newer.where(target: [ Target::ALL, Target::NON_MEMBER ]) }
    scope :members, -> { newer.where(target: [ Target::ALL, Target::MEMBER ]) }
  end
end
