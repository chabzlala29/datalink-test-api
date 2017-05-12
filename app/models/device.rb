class Device < ApplicationRecord
  validates :device_mac, presence: true
  validates :serial_no, presence: true
  validates :name, presence: true

  def self.updatable_fields
    [
      :device_mac,
      :serial_no,
      :color,
      :name,
      :description,
      :building,
      :level,
      :device_threshold
    ]
  end
end
