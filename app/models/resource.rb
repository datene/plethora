class Resource < ApplicationRecord
  has_many :tags, dependent: :destroy
  belongs_to :user
end
