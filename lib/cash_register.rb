

class CashRegister
    
    attr_accessor :total, :last_item_total
    attr_reader :discount, :items
   
    def initialize(employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @items = []
        @last_item_total = 0
    end

    def add_item (title, price, quantity=1)
        quantity.times do
            @items << title
        end
        @last_item_total = price * quantity 
        @total = total + price * quantity 
    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        end
        discount_to_dec = 1 - discount/100.0
        self.total = total * discount_to_dec
        "After the discount, the total comes to $#{total.to_i}."
    end

    def void_last_transaction
        @total = total - last_item_total
    end
 

end

# puts lisa = CashRegister.new(100, 20)
