class SubscriptionsController < ApplicationController
 
  def index
    @subscription = current_user.subscription
    if @subscription.nil?
      @subscription = Subscription.new(:newsletter => false)
    end
    logger.debug "Newsletter is #{@subscription.newsletter}"
  end
  
  def create
    @subscription = Subscription.new(params[:subscription])    
    @subscription.user = current_user
    if @subscription.save
      flash[:notice] = "Successfully updated your email settings." 
      redirect_to root_path
    else
      render :action => 'index'
    end
  end
  
  
  def update
    @subscription = Subscription.find(params[:id])  
    if @subscription.update_attributes(params[:subscription])  
      flash[:notice] = "Successfully updated your email settings." 
      redirect_to root_path
    else
      flash[:alert] = "Error"
      render :action => 'index'
    end
  end
end

