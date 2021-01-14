class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def total_appts
        self.appointments.length
    end
end
