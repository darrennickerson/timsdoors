class ContactformMailer < ApplicationMailer
   
    def contact_email
        @contact = params[:contact]
        mail(to: 'timcrabbe123@hotmail.com', from: @contact.email,  subject: @contact.name)
        
    end
    def confirmation_email
        @contact = params[:contact]
        mail(to: @contact.email, from: 'timcrabbe123@hotmail.com' ,  subject: 'We received your email!')
    end
end
