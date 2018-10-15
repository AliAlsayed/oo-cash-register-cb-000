class CashRegister
  attr_accessor :total, :discount
  def initialize(discount=nil)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
  end

  def apply_discount
    if @discount
      @total -= (@total * (@discount / 100))
    else
      return "There is no discount to apply"
    end
  end
end
