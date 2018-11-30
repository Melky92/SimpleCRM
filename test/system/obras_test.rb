require "application_system_test_case"

class ObrasTest < ApplicationSystemTestCase
  setup do
    @obra = obras(:one)
  end

  test "visiting the index" do
    visit obras_url
    assert_selector "h1", text: "Obras"
  end

  test "creating a Obra" do
    visit obras_url
    click_on "Nueva Obra"

    fill_in "Adjudicado", with: @obra.adjudicado
    fill_in "Barrio", with: @obra.barrio
    fill_in "Calle", with: @obra.calle
    fill_in "Caseton", with: @obra.caseton
    fill_in "Ciudad", with: @obra.ciudad
    fill_in "Cliente", with: @obra.cliente_id
    fill_in "Comentarios", with: @obra.comentarios
    fill_in "Contrato", with: @obra.contrato
    fill_in "Fecha Cierre", with: @obra.fecha_cierre
    fill_in "Foto", with: @obra.foto
    fill_in "Ganado", with: @obra.ganado
    fill_in "Latitud", with: @obra.latitud
    fill_in "Longitud", with: @obra.longitud
    fill_in "Motivo", with: @obra.motivo
    fill_in "Nombre", with: @obra.nombre
    fill_in "Nombre Contratista", with: @obra.nombre_contratista
    fill_in "Nombre Encargado", with: @obra.nombre_encargado
    fill_in "Nombre Propietario", with: @obra.nombre_propietario
    fill_in "Nota", with: @obra.nota
    fill_in "Numero", with: @obra.numero
    fill_in "Observaciones", with: @obra.observaciones
    fill_in "Proxima Visita", with: @obra.proxima_visita
    fill_in "Superficie Aproximada", with: @obra.superficie_aproximada
    fill_in "Telefono Contratista", with: @obra.telefono_contratista
    fill_in "Telefono Encargado", with: @obra.telefono_encargado
    fill_in "Telefono Propietario", with: @obra.telefono_propietario
    fill_in "Viguetes", with: @obra.viguetes
    fill_in "Zona", with: @obra.zona
    click_on "Create Obra"

    assert_text "Obra was successfully created"
    click_on "Volver"
  end

  test "updating a Obra" do
    visit obras_url
    click_on "Editar", match: :first

    fill_in "Adjudicado", with: @obra.adjudicado
    fill_in "Barrio", with: @obra.barrio
    fill_in "Calle", with: @obra.calle
    fill_in "Caseton", with: @obra.caseton
    fill_in "Ciudad", with: @obra.ciudad
    fill_in "Cliente", with: @obra.cliente_id
    fill_in "Comentarios", with: @obra.comentarios
    fill_in "Contrato", with: @obra.contrato
    fill_in "Fecha Cierre", with: @obra.fecha_cierre
    fill_in "Foto", with: @obra.foto
    fill_in "Ganado", with: @obra.ganado
    fill_in "Latitud", with: @obra.latitud
    fill_in "Longitud", with: @obra.longitud
    fill_in "Motivo", with: @obra.motivo
    fill_in "Nombre", with: @obra.nombre
    fill_in "Nombre Contratista", with: @obra.nombre_contratista
    fill_in "Nombre Encargado", with: @obra.nombre_encargado
    fill_in "Nombre Propietario", with: @obra.nombre_propietario
    fill_in "Nota", with: @obra.nota
    fill_in "Numero", with: @obra.numero
    fill_in "Observaciones", with: @obra.observaciones
    fill_in "Proxima Visita", with: @obra.proxima_visita
    fill_in "Superficie Aproximada", with: @obra.superficie_aproximada
    fill_in "Telefono Contratista", with: @obra.telefono_contratista
    fill_in "Telefono Encargado", with: @obra.telefono_encargado
    fill_in "Telefono Propietario", with: @obra.telefono_propietario
    fill_in "Viguetes", with: @obra.viguetes
    fill_in "Zona", with: @obra.zona
    click_on "Update Obra"

    assert_text "Obra was successfully updated"
    click_on "Volver"
  end

  test "destroying a Obra" do
    visit obras_url
    page.accept_confirm do
      click_on "Eliminar", match: :first
    end

    assert_text "Obra was successfully destroyed"
  end
end
