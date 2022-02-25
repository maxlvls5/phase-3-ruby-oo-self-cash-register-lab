
require 'pry'

class CashRegister
    
    attr_accessor :total, :discount, :items, :last_item



    def initialize(discount =0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.last_item = price*quantity
        self.total += self.last_item
        quantity.times do 
            self.items << title 
        end
    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        end
        self.total *= (100-self.discount)/100.to_f
        "After the discount, the total comes to $#{self.total.to_i}."
    end

    def void_last_transaction
        self.total -= self.last_item
    end
end 


# c1 = CashRegister.new

# c1.add_item("bread",5)

# pp c1.items 

# binding.pry