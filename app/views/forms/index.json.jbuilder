json.array!(@forms) do |form|
  json.extract! form, :id, :nombre, :email, :edad, :genero, :comuna, :TipoDeAlimentacion, :ViveConAnimales, :ProblematicaAnimal, :VotoEnElecciones, :CandidatoAnimalista, :CandidatoAnimalistaHombre, :CandidatoAnimalistaMujer, :CandidatoAnimalistaJoven, :CandidatoPromotorAmbientalista, :VoluntarioAnimalista
  json.url form_url(form, format: :json)
end
