class NuevoForm < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :nombre, :string
    remove_column :forms, :email, :string
    remove_column :forms, :edad, :string
    remove_column :forms, :genero, :string
    remove_column :forms, :comuna, :string
    remove_column :forms, :TipoDeAlimentacion, :string
    remove_column :forms, :ViveConAnimales, :string
    remove_column :forms, :ProblematicaAnimal, :string
    remove_column :forms, :VotoEnElecciones, :string
    remove_column :forms, :CandidatoAnimalista, :string
    remove_column :forms, :CandidatoAnimalistaHombre, :string
    remove_column :forms, :CandidatoAnimalistaMujer, :string
    remove_column :forms, :CandidatoAnimalistaJoven, :string
    remove_column :forms, :CandidatoPromotorAmbientalista, :string
    remove_column :forms, :VoluntarioAnimalista, :string

    add_column :forms, :nombre, :string
    add_column :forms, :apellido, :string
    add_column :forms, :email, :string
    add_column :forms, :ciudad, :string
    add_column :forms, :pais, :string
  end
end
