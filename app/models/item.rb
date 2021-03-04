class Item < ApplicationRecord
  
  belongs_to :user

  mount_uploader :image, ImageUploader

  with_options presence: true do
    validates :name
    validates :catchup
    validates :good
    validates :type_id
    validates :room
    validates :room_fee
    validates :common_ff
    validates :area_id
    validates :deposit
    validates :money
    validates :guarantee
    validates :brokerage
    validates :insurance
    validates :renew
    validates :movein
    validates :others
    validates :address
    validates :traffic
    validates :building_name
    validates :structure
    validates :occupied_area
    validates :number
    validates :year
    validates :specifications
    validates :user_id
    validates :image
  end


end
