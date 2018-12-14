class ImagenesController < ApplicationController
  def ver
    path = "/srv/obras-scz/imagenes/#{params[:filename]}.jpg"
    send_file( path,
      :disposition => 'inline',
      :type => 'image/jpeg',
      :x_sendfile => true )
  end
  def icono
    path = "/srv/obras-scz/iconos/#{params[:id]}.png"
    send_file( path,
      :disposition => 'inline',
      :type => 'image/png',
      :x_sendfile => true )
  end
end