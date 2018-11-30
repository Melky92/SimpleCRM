class ObrasController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_obra, only: [:show, :edit, :update, :destroy]

  # GET /obras
  # GET /obras.json
  def index
    @obras = Obra.all.order(:created_at).reverse_order
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
    header, data = obra_params[:foto].split(',')
    img_type = header.match(/image\/([a-z]{1,11});/)[1]
    img_file = "obra_" + DateTime.now.strftime("%Y%m%dT%H%M%S") + ".jpg"
    path = "/srv/obras-scz/imagenes/"
    File.open(path + img_file, 'w:binary') do |f|
      f.write(Base64.decode64(data))
    end
    # File.open("mi_foto4.jpg", "w+") do |f|
    #   f.write( Base64.decode64(obra_params[:foto])  ) 
    # end

    nueva_obra = obra_params_sin_foto
    nueva_obra[:foto] = img_file

    @obra = Obra.new(nueva_obra)
    
    respond_to do |format|
      if @obra.save
        format.html { redirect_to @obra, notice: 'Obra was successfully created.' }
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
    respond_to do |format|
      if @obra.update(obra_params)
        format.html { redirect_to @obra, notice: 'Obra was successfully updated.' }
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
      format.html { redirect_to obras_url, notice: 'Obra was successfully destroyed.' }
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
      params.require(:obra).permit(:nombre_encargado, :telefono_encargado, :nombre_contratista, :telefono_contratista, :nombre_propietario, :telefono_propietario, :superficie_aproximada, :comentarios, :viguetes, :caseton, :foto, :nombre, :proxima_visita, :nota, :calle, :numero, :barrio, :zona, :ciudad, :latitud, :longitud, :observaciones, :ganado, :adjudicado, :motivo, :comentarios, :contrato, :fecha_cierre, :cliente_id)
    end

    def obra_params_sin_foto
      params.require(:obra).permit(:nombre_encargado, :telefono_encargado, :nombre_contratista, :telefono_contratista, :nombre_propietario, :telefono_propietario, :superficie_aproximada, :comentarios, :viguetes, :caseton, :nombre, :proxima_visita, :nota, :calle, :numero, :barrio, :zona, :ciudad, :latitud, :longitud, :observaciones, :ganado, :adjudicado, :motivo, :comentarios, :contrato, :fecha_cierre, :cliente_id)
    end
end
