require 'pry'

class Patient
  attr_accessor :patient
  attr_reader :name, :doctor, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end

  def doctors
    self.appointments.collect do |app|
      app.doctor
    # binding.pry
    end
  end

end
