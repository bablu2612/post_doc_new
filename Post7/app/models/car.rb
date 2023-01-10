class Car < ApplicationRecord
    has_many :car_compare,dependent: :delete_all
    has_many :offer,dependent: :delete_all

    extend FriendlyId
    # friendly_id :name, use: :slugged
    friendly_id :generated_slug, use: :slugged
  def generated_slug
    require 'securerandom' 
    @random_slug ||= persisted? ? friendly_id : SecureRandom.hex(15) 
  end

end
