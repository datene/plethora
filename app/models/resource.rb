class Resource < ApplicationRecord
  has_many :tags
  belongs_to :user
end