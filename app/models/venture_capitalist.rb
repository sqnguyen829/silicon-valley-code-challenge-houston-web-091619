class VentureCapitalist

    attr_accessor :name, :total_worth

    @@all = []
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth

        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        tre_comma = self.all.select do |vc|
            vc.total_worth > 1000000000
        end
        tre_comma
    end

    def num_funding_rounds
        FundingRound.all.select do |fund_R|
            fund_R.venture_capitalist == self
        end  
    end

    def offer_contract(s_obj, type, investment)
        new_obj = FundingRound.new(s_obj, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select do |fund_R|
            fund_R.venture_capitalist == self
        end  
    end

    def portfolio
        some_arr = []
        funding_rounds.each do |i|
            some_arr << i.startup.name
        end
        some_arr.uniq
    end

    def biggest_investment
        funding_rounds.max_by do |big|
            big.investment
        end
    end

    def invested(domain_string)
        
    end
end
