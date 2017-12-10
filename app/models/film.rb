class Film < ApplicationRecord
    has_many:showings, dependent: :destroy
end
