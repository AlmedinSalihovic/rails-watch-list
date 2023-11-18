class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  # Validates that the movie-list pairing is unique.
  validates :movie_id, uniqueness: { scope: :list_id }
  # Validates the presence of a movie and a list.
  validates :movie, presence: true
  validates :list, presence: true
end
