class WeightHistory < ApplicationRecord
  belongs_to :user

  before_validation :set_memo

  validates :user_id, presence: {message: "ユーザを入力してください"}
  validates :memo, length: {maximum: 255, too_long: "メモは最大%{count}文字いないで入力してください"}
  validate :weight_validate

  # カスタムバリデーション
  def weight_validate
    if weight < 1
      errors.add(:weight, "体重が正しくありません")
    end
  end

  def set_memo
    if memo.nil?
      self.memo = "なし"
    end
  end
end
