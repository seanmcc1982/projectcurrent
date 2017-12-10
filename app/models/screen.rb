class Screen < ApplicationRecord
    has_many:showings, dependent: :destroy
end
