class Student < ApplicationRecord
    has_one :school
    has_one :fitting
    has_one :product
end
