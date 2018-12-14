class AuthController < ApplicationController
    skip_before_action :verify_authenticity_token
    def sign_in
        puts request
        mi_usuario = params.require(:usuario).permit(:nombre_de_usuario, :contrasenha)
        puts "buscando usuario: " + mi_usuario[:nombre_de_usuario]
        usuario = Usuario.where( nombre_de_usuario: mi_usuario[:nombre_de_usuario] ).first
        if usuario then
            if usuario.contrasenha == mi_usuario[:contrasenha] then
                render json: usuario, status: 200
            else
                render plain: "contraseña incorrecta", status: 401
            end
        else
            render plain: "usuario no encontrado", status: 204
        end

        # if user && params[:contrasenha] == user.contrasenha
        #     session.clear
        #     session[:user_id] = user.id
        # else
        #     @error = 'Username or password was incorrect'
        #     erb :sign_in
        # end
        # render :show, status: :created

    end
end