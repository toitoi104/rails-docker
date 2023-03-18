# viewで利用できるメソッド
module WeightHistoriesHelper
  def weight_comment(weight)
    if weight < 20
      "#{weight}kg (痩せ型)"
    else
      "#{weight}kg (太っちょ)"
    end
  end
end
