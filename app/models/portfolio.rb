class Portfolio < ApplicationRecord

has_many  :technologies

accepts_nested_attributes_for :technologies, 
                
                    reject_if: lambda{ |atr| atr['name'].blank? }

include Placeholder

    scope :angular,->{where(subtitle:"angular")}

    def self.ror
        where(subtitle:"ROR")\

    end

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= Placeholder.image_gen(height:'400')
        self.thumb_image ||= Placeholder.image_gen(height:'500')
    end


end
