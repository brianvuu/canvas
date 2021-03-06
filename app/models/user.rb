class User < ApplicationRecord
    has_many :enrollments
    has_many :courses, through: :enrollments

    validates_presence_of :first_name, :last_name

    def self.last_name
        order(:last_name)
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
