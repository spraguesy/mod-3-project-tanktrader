class Price < ApplicationRecord

    belongs_to :game    

    def new_price(event = nil)
        price = 0
        if event == nil 
            # use the normal distribution to add the price
            sigma = 1
            mean = 0
            rand_number = rand()
            exponent = (rand_number - mean)**2 / (2 * (sigma**2))
            beta = 1 / ((2 * Math::PI**0.5) * sigma)
            new_number = (Math.exp(-exponent) * beta)
            price = new_number
        else
            #  use the event mean/sigma to add the price
            price = new_number
        end

        self.update(value: new_number)
    end
end
