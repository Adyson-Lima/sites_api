class Site < ApplicationRecord
  validates :url, :description, presence: true
end
