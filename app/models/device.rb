class Device < ApplicationRecord
  validates :device_mac, presence: true
  validates :serial_no, presence: true
  validates :name, presence: true
end
