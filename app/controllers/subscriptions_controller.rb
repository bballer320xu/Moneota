class SubscriptionsController < ApplicationController
 
  def index
    @subscription = current_user.subscription
    logger.debug "Newsletter is #{@subscription.newsletter}"
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

