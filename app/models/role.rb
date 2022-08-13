class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |data|
            data.actor
        end
    end
    def locations
        self.auditions.map do |data|
            data.location
        end
    end
    def lead
        lead=self.auditions.find do |data|
            data.hired ==true
        end
        if(lead)
            lead
        else
            'no actor has been hired for this role'
        end
    end

    def understudy
        self.auditions.where(hired:true).second||"no actor has been hired for understudy for this role"
    end
    # binding.pry
end