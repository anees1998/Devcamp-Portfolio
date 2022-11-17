class Blog < ApplicationRecord
    extend Friendly_id
    friendly_id :Title, use: :slugged
end
