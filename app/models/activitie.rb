class Activitie < ApplicationRecord
	belongs_to :user
	has_many :tasks
	validates :name, presence: true,
                    length: { minimum: 5 }
    validates :description, presence: true,
                    length: { minimum: 8 }
    validates_presence_of :user
    def self.to_csv
    	CSV.generate(headers: true) do |csv|
    		csv << column_names
    		all.each do |activitie|
    			csv << activitie.attributes.values_at(*column_names)
    		end
    	end
    end
end
