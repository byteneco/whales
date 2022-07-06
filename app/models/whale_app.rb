class WhaleApp < ApplicationRecord
  validates :app_id, presence: true, length: {maximum: 20}
  validates :name, presence: true, length: {maximum: 20}
end
