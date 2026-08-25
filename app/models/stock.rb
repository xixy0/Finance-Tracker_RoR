class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        stock = Alphavantage::TimeSeries.new(symbol: ticker_symbol)
        client= stock.quote
        client.price
    end
end
