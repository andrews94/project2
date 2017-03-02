class Champion < ApplicationRecord
  has_many :skills, dependent: :destroy
end
