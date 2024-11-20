class Student < ApplicationRecord
    belongs_to :school
    belongs_to :fitting
    belongs_to :product
end
