class ObrasController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_obra, only: [:show, :edit, :update, :destroy]

  # GET /obras
  # GET /obras.json
  def index
    @obras = Obra.all.order(:created_at).reverse_order
    respond_to do |format|
      format.html { @obras }
      format.json { render json: @obras, include: ['cliente','usuario'] }
    end
  end

  def obras_ganadas
    @obras = Obra.where(ganado: true)
    render :index
  end

  def obras_perdidas
    @obras = Obra.where(ganado: false).where("length(motivo) > 0")
    render :index
  end

  def obras_sin_vendedor
    @obras = Obra.where(usuario_id: nil)
    render :index
  end

  def obras_nuevas
    @obras = Obra.all.order(:created_at).last(10).reverse
    render :index
  end

  # GET /obras/mapa/ganadas
  def mapa_ganadas
    @obras = Obra.where(ganado: true)
    render :map
  end

  # GET /obras/mapa/perdidas
  def mapa_perdidas
    @obras = Obra.where(ganado: false).where("length(motivo) > 0")
    render :map
  end

  # GET /obras/mapa/sin_vendedor
  def mapa_sin_vendedor
    @obras = Obra.where(usuario_id: nil)
    render :map
  end

  # GET /obras/mapa/nuevas
  def mapa_nuevas
    @obras = Obra.all.order(:created_at).last(10)
    render :map
  end

  # GET /obras/mapa
  def mapa_todas
    @obras = Obra.all
    render :map
  end

  # GET /obras/mapa/:id_usuario
  def mapa_usuario
    @obras = Obra.where(usuario_id: params[:id_usuario])
    render :map
  end

  # GET /obras/mapa/:id_cliente
  def mapa_cliente
    @obras = Obra.where(cliente_id: params[:id_cliente])
    render :map
  end

  # GET /obras/1
  # GET /obras/1.json
  def show
  end

  # GET /obras/new
  def new
    @obra = Obra.new
  end

  # GET /obras/1/edit
  def edit
  end

  # POST /obras
  # POST /obras.json
  def create
    if(obra_params[:foto]) then
      header, data = obra_params[:foto].split(',')
      img_type = header.match(/image\/([a-z]{1,11});/)[1]
      img_file = "obra_" + DateTime.now.strftime("%Y%m%dT%H%M%S") + ".jpg"
      path = "/srv/obras-scz/imagenes/"
      File.open(path + img_file, 'w:binary') do |f|
        f.write(Base64.decode64(data))
      end
    end

    nueva_obra = obra_params_sin_foto
    nueva_obra[:foto] = img_file

    @obra = Obra.new(nueva_obra)
    
    respond_to do |format|
      if @obra.save
        format.html { redirect_to @obra, notice: 'Obra fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @obra }
      else
        format.html { render :new }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obras/1
  # PATCH/PUT /obras/1.json
  def update
    if(obra_params[:foto] && obra_params[:foto].length > 100) then
      header, data = obra_params[:foto].split(',')
      img_type = header.match(/image\/([a-z]{1,11});/)[1]
      img_file = "obra_" + DateTime.now.strftime("%Y%m%dT%H%M%S") + ".jpg"
      path = "/srv/obras-scz/imagenes/"
      File.open(path + img_file, 'w:binary') do |f|
        f.write(Base64.decode64(data))
      end
    end

    nueva_obra = obra_params_sin_foto
    if img_file then
      nueva_obra[:foto] = img_file
    end 

    respond_to do |format|
      if @obra.update(nueva_obra)
        format.html { redirect_to @obra, notice: 'Obra fue modificada existosamente.' }
        format.json { render :show, status: :ok, location: @obra }
      else
        format.html { render :edit }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obras/1
  # DELETE /obras/1.json
  def destroy
    @obra.destroy
    respond_to do |format|
      format.html { redirect_to "/obras_nuevas", notice: 'Obra fue eliminada existosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obra
      @obra = Obra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obra_params
      params.require(:obra).permit(:nombre_encargado, :telefono_encargado, :nombre_contratista, :telefono_contratista, :nombre_propietario, :telefono_propietario, :superficie_aproximada, :comentarios, :viguetes, :caseton, :foto, :nombre, :proxima_visita, :nota, :calle, :numero, :barrio, :zona, :ciudad, :latitud, :longitud, :observaciones, :ganado, :adjudicado, :motivo, :comentarios, :contrato, :fecha_cierre, :cliente_id, :usuario_id)
    end

    def obra_params_sin_foto
      params.require(:obra).permit(:nombre_encargado, :telefono_encargado, :nombre_contratista, :telefono_contratista, :nombre_propietario, :telefono_propietario, :superficie_aproximada, :comentarios, :viguetes, :caseton, :nombre, :proxima_visita, :nota, :calle, :numero, :barrio, :zona, :ciudad, :latitud, :longitud, :observaciones, :ganado, :adjudicado, :motivo, :comentarios, :contrato, :fecha_cierre, :cliente_id, :usuario_id)
    end
end
