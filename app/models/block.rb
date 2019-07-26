class Block < ApplicationRecord
  belongs_to :portfolio

  enum kind: { profile: 1, about: 2, education: 3, experience: 4, habby: 5, skill: 6,
              language: 7, social: 8, cantact: 9, additional_information: 10 }

  enum side: [:left, :right]

  validates :position, presence: true, uniqueness: { scope: :portifolio_id }
  validates :kind, presence: true, uniqueness: { scope: :portifolio_id}
end
