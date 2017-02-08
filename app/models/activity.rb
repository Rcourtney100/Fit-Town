class Activity < ApplicationRecord
	has_one :event_created_id
	has_many :comment_created_id
end
