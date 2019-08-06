class Teacher < ApplicationRecord
	include ImageUploader[:image]
  belongs_to :user
  belongs_to :type
  has_many :tutorings

  validates :phone, :name, presence: true

  after_create :set_default_status

  enum status: [:active, :inactive]

  def set_default_status
  	self.inactive!
  end
end
