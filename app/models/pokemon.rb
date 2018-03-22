class Pokemon < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :trainer, optional: true
  validates :name, presence: true, uniqueness: true
end
