class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs

    def give_freebie(dev, item_name, value)
        Freebie.create(
            item_name: item_name,
            value: value,
            company_id: self.id,
            dev_id: dev.id
        )
    end
    def freebies
        company_freebies = Freebie.all.select{|freebie| self.id==freebie.company_id}
    end
    def self.oldest_company
        Company.all.sort_by(&:founding_year)[0]
    end
end
