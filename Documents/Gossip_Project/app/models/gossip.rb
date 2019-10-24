class Gossip < ApplicationRecord
    has_many :addgossips
    has_many :tags, through: :addgossips
    belongs_to :user
end
