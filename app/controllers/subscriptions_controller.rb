class SubscriptionsController < ApplicationController
 
  def index
    @subscription = current_user.subscription
  end

  def update
    @subscription = Subscription.find(params[:id])  
    if @subscription.update_attributes(params[:subscription])  
      flash[:notice] = t('subscription.update.flashes.success')
      redirect_to root_path
    else
      flash[:alert] = t('subscription.update.flashes.error')
      render :action => 'index'
    end
  end
end

