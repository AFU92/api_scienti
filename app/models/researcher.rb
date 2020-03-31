class Researcher < ApplicationRecord
    belongs_to :classification
    belongs_to :education_level
    belongs_to :birth_region, class_name: 'Region'
    belongs_to :residence_region, class_name: 'Region'

    has_many :announcements, through: :announcement_researchers
end
