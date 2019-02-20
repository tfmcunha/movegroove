class ContactFormsController < ApplicationController
  
  
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_forms_params)
    @contact_form.request = request

    respond_to do |format|
      if @contact_form.deliver
        format.html { redirect_to root_url, notice: 'Thank you for your message! We will contact you as soon as possible!' }
        
      else
        format.html { render :new }
        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

 

  def contact_forms_params
    params.require(:contact_form).permit(:name, :email, :message, :nickname)
  end
end