class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :nombre
      t.string :email
      t.string :edad
      t.string :genero
      t.string :comuna
      t.string :TipoDeAlimentacion
      t.string :ViveConAnimales
      t.string :ProblematicaAnimal
      t.string :VotoEnElecciones
      t.string :CandidatoAnimalista
      t.string :CandidatoAnimalistaHombre
      t.string :CandidatoAnimalistaMujer
      t.string :CandidatoAnimalistaJoven
      t.string :CandidatoPromotorAmbientalista
      t.string :VoluntarioAnimalista

      t.timestamps
    end
  end
end
