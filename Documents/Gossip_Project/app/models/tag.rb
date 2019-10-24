class Tag < ApplicationRecord
    has_many :addgossips
    has_many :gossips, through: :addgossips
end
