class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show edit update destroy]

  def index
    @activities = Activity.all
  end

  def show; end

  def new
    @activity = Activity.new
  end

  def edit; end

  def create
    @activity = Activity.new(activity_params)
    @activity.save ? redirect_to(@activity) : render(:new)
  end

  def update
    @activity.update(activity_params) ? redirect_to(@activity) : render(:edit)
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :ecoins)
  end
end
