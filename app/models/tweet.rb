class Tweet < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :user, presence: true, length: { maximum: 10 }
end