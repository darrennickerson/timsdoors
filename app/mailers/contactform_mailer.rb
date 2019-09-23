class ContactformMailer < ApplicationMailer
   
    def contact_email
        @contact = params[:contact]
        email_with_name = %("#{@contact.name}" <#{@contact.email}>)
        mail(to: 'timcrabbe123@hotmail.com, darrennickerson30@gmail.com', from: email_with_name,  subject: 'Website Contact From #{@contact.name}')
        
    end
    def confirmation_email
        
        @contact = params[:contact]
        attachments.inline["timsdoors.png"] = File.read("#{Rails.root}/app/assets/images/timsdoors.png")
        email_with_name = %("#{@contact.name}" <#{@contact.email}>)
        mail(to: email_with_name, from: 'Tims Overhead Doors <timcrabbe123@hotmail.com>' ,  subject: 'We received your email!')
    end
end
