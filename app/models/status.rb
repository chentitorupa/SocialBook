class Status < ApplicationRecord
    attr_accessible :content, :user_id
    belongs_to :user
end
