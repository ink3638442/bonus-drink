class BonusDrink
  def self.total_count_for(amount)
    bonus_bottle = amount / 3
    amount += bonus_bottle
  end
end