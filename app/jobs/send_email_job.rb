class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(animal)
    @animal = animal
    AnimalMailer.new_animal_created_email(@animal).deliver_later
  end
end
