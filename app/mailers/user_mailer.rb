class UserMailer < ActionMailer::Base
  #default from: "probando.mails.op@gmail.com"
  before_filter :authenticate_user!
  default from: "probando.mails.op@gmail.com"


def contacto(nombre,mail,asunto,mensaje)
	@nombre = nombre
	@mail = mail
	@asunto = asunto
	@mensaje = mensaje
	mail(:to =>"probando.mails.op@gmail.com", :subject => "Nueva consulta")
end

end
