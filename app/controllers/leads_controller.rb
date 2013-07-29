class LeadsController < ApplicationController
  def create
    lead = Lead.new(params[:lead])
    lead.save
    redirect_to :back
  end
end
