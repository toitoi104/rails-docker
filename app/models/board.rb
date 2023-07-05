class Board < ApplicationRecord
  # presence: true 値が必須（requiredと一緒）
  validates :name, presence: true, length: {maximum: 10}
  validates :title, presence: true, length: {maximum: 30}
  validates :body, presence: true, length: {maximum: 1000}
end
