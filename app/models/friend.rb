class Friend < ApplicationRecord
  belongs_to :user
  has_one :user
end
