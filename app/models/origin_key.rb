class OriginKey < ApplicationRecord
  validates :key, presence: true, length: { maximum: 128 }
  validates :whale_app_id, presence: true
end
