require 'pry'

class Doctor
  attr_accessor :doctor
  attr_reader :name, :patient, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  # def patients
  #   appointments.map(&:patient)
  # end

  def patients
    self.appointments.collect do |appointments|
      appointments.patient
    end
  end

end
