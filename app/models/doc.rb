# frozen_string_literal: true

class Doc < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
end
