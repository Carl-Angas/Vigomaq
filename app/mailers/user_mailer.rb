class UserMailer < ActionMailer::Base
  #default from: "probando.mails.op@gmail.com"
  default from: "probando.mails.op@gmail.com"

def contacto(nombre,mail,asunto,mensaje)
	@nombre = nombre
	@mail = mail
	@asunto = asunto
	@mensaje = mensaje
	mail(:to =>"probando.mails.op@gmail.com", :subject => "esto es una prueba ")
end

end
