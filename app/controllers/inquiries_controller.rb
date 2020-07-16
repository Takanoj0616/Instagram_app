class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new;
    
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
   if @inquiry.save
     render "confirm"
   else
     render :new
   end
  end

  def thanks
  end

private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :relationship, :content)
  end
end
