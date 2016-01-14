class Form < ActiveRecord::Base
	validates :nombre, presence: true
	validates :email, presence: true, uniqueness: true
	validates :edad, :genero, :comuna, :TipoDeAlimentacion, :ViveConAnimales, :ProblematicaAnimal, :VotoEnElecciones, :CandidatoAnimalista, :CandidatoAnimalistaHombre, :CandidatoAnimalistaMujer, :CandidatoAnimalistaJoven, :CandidatoPromotorAmbientalista, :VoluntarioAnimalista, presence: true
end


