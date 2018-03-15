class User < ApplicationRecord
  validates_presence_of :name, :father_name, :grandpa_name, :family_name, :birthday, :gender, :locality,
      :alley, :house_number, :neighborhood, :city, :state, :country, :cell_phone_number, :home_phone_number,
      :email_address

  validates :email_address, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }    
  validates_length_of :cell_phone_number, :minimum => 11, :maximum => 11
end
