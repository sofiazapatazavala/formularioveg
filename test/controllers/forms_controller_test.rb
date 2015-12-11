require 'test_helper'

class FormsControllerTest < ActionController::TestCase
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post :create, form: { CandidatoAnimalista: @form.CandidatoAnimalista, CandidatoAnimalistaHombre: @form.CandidatoAnimalistaHombre, CandidatoAnimalistaJoven: @form.CandidatoAnimalistaJoven, CandidatoAnimalistaMujer: @form.CandidatoAnimalistaMujer, CandidatoPromotorAmbientalista: @form.CandidatoPromotorAmbientalista, ProblematicaAnimal: @form.ProblematicaAnimal, TipoDeAlimentacion: @form.TipoDeAlimentacion, ViveConAnimales: @form.ViveConAnimales, VoluntarioAnimalista: @form.VoluntarioAnimalista, VotoEnElecciones: @form.VotoEnElecciones, comuna: @form.comuna, edad: @form.edad, email: @form.email, genero: @form.genero, nombre: @form.nombre }
    end

    assert_redirected_to form_path(assigns(:form))
  end

  test "should show form" do
    get :show, id: @form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form
    assert_response :success
  end

  test "should update form" do
    patch :update, id: @form, form: { CandidatoAnimalista: @form.CandidatoAnimalista, CandidatoAnimalistaHombre: @form.CandidatoAnimalistaHombre, CandidatoAnimalistaJoven: @form.CandidatoAnimalistaJoven, CandidatoAnimalistaMujer: @form.CandidatoAnimalistaMujer, CandidatoPromotorAmbientalista: @form.CandidatoPromotorAmbientalista, ProblematicaAnimal: @form.ProblematicaAnimal, TipoDeAlimentacion: @form.TipoDeAlimentacion, ViveConAnimales: @form.ViveConAnimales, VoluntarioAnimalista: @form.VoluntarioAnimalista, VotoEnElecciones: @form.VotoEnElecciones, comuna: @form.comuna, edad: @form.edad, email: @form.email, genero: @form.genero, nombre: @form.nombre }
    assert_redirected_to form_path(assigns(:form))
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete :destroy, id: @form
    end

    assert_redirected_to forms_path
  end
end
