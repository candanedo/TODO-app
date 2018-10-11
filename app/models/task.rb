class Task < ApplicationRecord
  belongs_to :activitie
  validates :name, presence: true,
                    length: { minimum: 5 }
  validates :description, presence: true,
                    length: { minimum: 5 }
  validates :initial_date, presence: true
  validates :final_date, presence: true
  def self.to_csv
    CSV.generate(headers: true) do |csv|
  	  csv << column_names
      all.each do |activitie|
        csv << activitie.attributes.values_at(*column_names)
      end
    end
  end
end
