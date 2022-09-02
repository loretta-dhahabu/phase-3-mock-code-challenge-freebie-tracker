class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies

def received_one?(item_name)
self.freebies.map do |f|
            if(f.item_name.include?(item_name) == true)
                return true
            end
        end
        false
end

def give_away(dev, freebie)
    if(self.freebies.include?(freebie) == true)
            freebie.update(dev: dev)
        end
    end
end
