class Car < ApplicationRecord
    has_many :car_compare,dependent: :delete_all
    has_many :offer,dependent: :delete_all

end
