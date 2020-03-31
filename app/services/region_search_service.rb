class RegionSearchService
    def self.search(filters)
        @regions = Region.all
        if filters[:born_reseachers]
            @regions.joins(:birth_researchers)
        end
        if filters[:residence_researches]
            @regions.joins(:residence_researchers)
        end
        if filters[:name]
            @regions.where("name like '%#{filters[:name]}%'")
        end
        @regions
    end
end
