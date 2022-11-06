class Freebie < ActiveRecord::Base
   belongs_to :dev
   belongs_to :company
    def print_details
        # detect and find work same way
        "#{Dev.detect(self.dev_id).name} owns a #{self.item_name} from #{Company.find(self.company_id).name}"
    end
end
