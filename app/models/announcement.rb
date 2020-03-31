class Announcement < ApplicationRecord
    belongs_to :area
    has_many :researchers, through: :announcement_researchers
end
