require 'test_helper'

class ObrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obra = obras(:one)
  end

  test "should get index" do
    get obras_url
    assert_response :success
  end

  test "should get new" do
    get new_obra_url
    assert_response :success
  end

  test "should create obra" do
    assert_difference('Obra.count') do
      post obras_url, params: { obra: { adjudicado: @obra.adjudicado, barrio: @obra.barrio, calle: @obra.calle, caseton: @obra.caseton, ciudad: @obra.ciudad, cliente_id: @obra.cliente_id, comentarios: @obra.comentarios, contrato: @obra.contrato, fecha_cierre: @obra.fecha_cierre, foto: @obra.foto, ganado: @obra.ganado, latitud: @obra.latitud, longitud: @obra.longitud, motivo: @obra.motivo, nombre: @obra.nombre, nombre_contratista: @obra.nombre_contratista, nombre_encargado: @obra.nombre_encargado, nombre_propietario: @obra.nombre_propietario, nota: @obra.nota, numero: @obra.numero, observaciones: @obra.observaciones, proxima_visita: @obra.proxima_visita, superficie_aproximada: @obra.superficie_aproximada, telefono_contratista: @obra.telefono_contratista, telefono_encargado: @obra.telefono_encargado, telefono_propietario: @obra.telefono_propietario, viguetes: @obra.viguetes, zona: @obra.zona } }
    end

    assert_redirected_to obra_url(Obra.last)
  end

  test "should show obra" do
    get obra_url(@obra)
    assert_response :success
  end

  test "should get edit" do
    get edit_obra_url(@obra)
    assert_response :success
  end

  test "should update obra" do
    patch obra_url(@obra), params: { obra: { adjudicado: @obra.adjudicado, barrio: @obra.barrio, calle: @obra.calle, caseton: @obra.caseton, ciudad: @obra.ciudad, cliente_id: @obra.cliente_id, comentarios: @obra.comentarios, contrato: @obra.contrato, fecha_cierre: @obra.fecha_cierre, foto: @obra.foto, ganado: @obra.ganado, latitud: @obra.latitud, longitud: @obra.longitud, motivo: @obra.motivo, nombre: @obra.nombre, nombre_contratista: @obra.nombre_contratista, nombre_encargado: @obra.nombre_encargado, nombre_propietario: @obra.nombre_propietario, nota: @obra.nota, numero: @obra.numero, observaciones: @obra.observaciones, proxima_visita: @obra.proxima_visita, superficie_aproximada: @obra.superficie_aproximada, telefono_contratista: @obra.telefono_contratista, telefono_encargado: @obra.telefono_encargado, telefono_propietario: @obra.telefono_propietario, viguetes: @obra.viguetes, zona: @obra.zona } }
    assert_redirected_to obra_url(@obra)
  end

  test "should destroy obra" do
    assert_difference('Obra.count', -1) do
      delete obra_url(@obra)
    end

    assert_redirected_to obras_url
  end
end
