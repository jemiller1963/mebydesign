class Event < ActiveRecord::Base
	default_scope -> { order('created_at DESC') }
	validates :event_name,  presence: true, length: { maximum: 150 }
	validates :description, presence: true, length: { maximum: 170 }
	validates :sdate, :edate, :link,  presence: true

end
