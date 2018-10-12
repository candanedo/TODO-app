class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :async, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :activities
  #def self.to_csv
  #  attributes = %w{id email name}

  #  CSV.generate(headers: true) do |csv|
  #    csv << attributes

  #    all.each do |user|
  #      csv << attributes.map{ |attr| user.send(attr) }
  #    end
  #  end
  #end

  #def name
  #  "#{name}"
  #end
end
