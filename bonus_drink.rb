class BonusDrink
  def self.total_count_for(amount)
    # ボーナスボトルを算出、トータル本数に合算
    bonus_bottle = amount / 3
    total_bottle = amount + bonus_bottle

    # さらに入手可能かを判断するため、余りのボトルとボーナスボトルの合計を数える
    remainder_bottle = amount % 3
    bottle_count     = bonus_bottle + remainder_bottle

    # 入手不可になるまで繰り返す
    while bottle_count >= 3
      bonus_bottle  = bottle_count / 3
      total_bottle += bonus_bottle

      remainder_bottle = bottle_count % 3
      bottle_count     = bonus_bottle + remainder_bottle
    end

    return total_bottle
  end
end