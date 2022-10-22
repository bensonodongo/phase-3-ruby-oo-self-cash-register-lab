class CashRegister
    attr_accessor :discount, :last_transaction, :items, :total
    def initialize(discount = 0, total = 0)
        @discount = discount
        @total = total
        @items = []
    end

    def total 
        @total 
    end

    def add_item(title, price, quantity = 1)
        quantity==1 ? self.items << title :  quantity.times{self.items << title}
        self.last_transaction = price*quantity
        @total += price*quantity
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            @total -= (@total*@discount)/100
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total -= self.last_transaction         
    end
end
