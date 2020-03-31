class Region < ApplicationRecord
    has_many :birth_researchers, class_name: 'Researcher', foreign_key: :birth_region_id
    has_many :residence_researchers, class_name: 'Researcher', foreign_key: :residence_region_id
end
