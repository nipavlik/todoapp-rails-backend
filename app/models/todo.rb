class Todo < ApplicationRecord
  belongs_to :project

  validates :text, :project, presence: true
end