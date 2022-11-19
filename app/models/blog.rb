class Blog < ApplicationRecord
    enum status:  {draft:0, publish:1}\
    validates_presence_of :Title, :Body
end
