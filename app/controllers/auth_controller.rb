class AuthController < ApplicationController
    skip_before_action :verify_authenticity_token
    def sign_in
        puts request
        mi_usuario = params.require(:usuario).permit(:email, :contrasenha)
        puts "buscando usuario: " + mi_usuario[:email]
        usuario = Usuario.includes(:cliente).where( email: mi_usuario[:email] ).first
        if usuario then
            if usuario.contrasenha == mi_usuario[:contrasenha] then
                render json: usuario, include: 'cliente', status: 200
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