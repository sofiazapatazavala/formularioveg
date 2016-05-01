class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:new, :create]

  # GET /forms
  # GET /forms.json
    
#  def index
#    @forms = Form.all
#  end

def index
  @forms = Form.all
  respond_to do |format|
    format.html
    format.csv do
      headers['Content-Disposition'] = "attachment; filename=\"form-list.csv\""
      headers['Content-Type'] ||= 'text/csv'
    end
  end
end
    
  # GET /forms/1
  # GET /forms/1.json
  def show
  end

  # GET /forms/new
  def new
    @form = Form.new
  end

  # GET /forms/1/edit
  def edit
  end

  # POST /forms
  # POST /forms.json
  def create
    @form = Form.new(form_params)

    respond_to do |format|
      if @form.save
		format.html { redirect_to gracias_url, notice: 'Tu encuesta fue enviada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
		format.html { redirect_to @form, notice: 'La encuesta fue actualizada.' }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
	  format.html { redirect_to forms_url, notice: 'La encuesta fue borrada.' }
      format.json { head :no_content }
    end
  end
  
  def dashboard
    @conteo = Form.count
  end

  def results
    @total = Form.count
    @niñas = Form.where(genero: "Femenino").count
    @niños = Form.where(genero: "Masculino").count
    @niñes = Form.where(genero: "No_Binario").count + Form.where(genero: "No Binario").count # Oops!
    
    @comunas = Form.group(:comuna).order('count_id DESC').limit(5).count(:id)
    
    @alim = Form.group(:TipoDeAlimentacion).order('count_id DESC').count(:id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.require(:form).permit(:nombre, :email, :edad, :genero, :comuna, :TipoDeAlimentacion, :ViveConAnimales, :ProblematicaAnimal, :VotoEnElecciones, :CandidatoAnimalista, :CandidatoAnimalistaHombre, :CandidatoAnimalistaMujer, :CandidatoAnimalistaJoven, :CandidatoPromotorAmbientalista, :VoluntarioAnimalista)
    end
end