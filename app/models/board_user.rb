class BoardUser < ApplicationRecord
  has_secure_password

  validates :name,
     presence: true,
     uniqueness: true,
     length: {maximum: 16},
     format: {
       with: /\A[a-z0-9]+\z/,
       message: 'は小文字英数字で入力してください'
     }

  validates :password,
    length: {minimum: 8}

  def age
    now = Time.zone.now # 現在の時間

    # 年数を取得
    (now.strftime('%Y%m%d').to_i birthday.strftime('%y%m%d').to_i / 10000)
  end
end
