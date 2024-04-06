class Owner < ApplicationRecord
  has_many :properties,  dependent: :destroy
end
