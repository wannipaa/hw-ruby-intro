class BookInStock
    attr_accessor :isbn, :price

    def initialize(isbn, price)
        raise ArgumentError, 'Sorry, something went wrong!' if isbn.empty? || price <= 0
        @isbn = isbn
        @price = price
    end

    def price_as_string
        format('$%.2f', price)
    end
end




