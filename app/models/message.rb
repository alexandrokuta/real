class Message < ApplicationRecord
  after_create_commit { BroadCastMessageJob.perform_later self }
  belongs_to :user ,class_name: "User", foreign_key: 'user_id'
  has_one_attached :image
  belongs_to :room
end
