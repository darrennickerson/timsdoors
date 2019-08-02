class ContactformMailer < ApplicationMailer
   
    def contact_email
        @contact = params[:contact]
        mail(to: 'tim@timsdoors.com', from: @contact.email,  subject: @contact.name)
        
    end
    def confirmation_email
        @contact = params[:contact]
        mail(to: @contact.email, from: 'tim@timsdoors.com' ,  subject: 'We received your email!')
    end
end
