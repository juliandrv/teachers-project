class Tutoring < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :topic

  validates :when, :where, presence: true
end
