module Placeholder

    extend ActiveSupport::Concern
    
        def self.image_gen(height:)
            "https://via.placeholder.com/#{ height }"
        end
end