class Arduino < ApplicationRecord
  validates :name, :description, presence: true
end
