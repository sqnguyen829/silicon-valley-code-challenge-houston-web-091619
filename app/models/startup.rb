class Startup
    attr_accessor :name, :founder, :domain
    @@all = []
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end
    def pivot(domain, name)
        @domain = domain
        @name = name
    end
    def self.all
        @@all
    end
    def self.find_by_founder(founder_name)
       found = self.all.find do |instance|
            instance.founder == founder_name
       end
       found
    end

    def self.domains
        all_domain = self.all.map do |instance| 
            instance.domain 
        end
        all_domain
    end

    def sign_contract(v_obj, type, investment)
        new_obj = FundingRound.new(self, v_obj, type, investment)
    end

    def num_funding_rounds
        FundingRound.all.select do |fund_R|
            fund_R.startup == self
        end  
    end

    def total_funds
        total = 0
        num_funding_rounds.each do |fund_R|
            total += fund_R.investment
        end
        total
    end

    def investors
        some_arr = []
        num_funding_rounds.each do |i|
            some_arr << i.venture_capitalist.name
        end
        some_arr.uniq
    end

    def big_investors

    end
 end
