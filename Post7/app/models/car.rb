class Car < ApplicationRecord
    has_many :car_compare,dependent: :delete_all
end
