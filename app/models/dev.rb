class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies
    def freebies
        Freebie.all.select{|freebie| freebie.dev_id == self.id}
    end
    def received_one?(item_name)
        if self.freebies.select{|freebie| freebie.item_name == item_name}.length > 0
            return true
        else
            return false
        end
    end
    def give_away(dev, freebie)
        if self.freebies.include? freebie
            Freebie.create(
                item_name: freebie.item_name,
                value: freebie.value,
                company_id: freebie.company_id,
                dev_id: dev.id
            )
            Freebie.delete(freebie.id)
        end
    end
end
