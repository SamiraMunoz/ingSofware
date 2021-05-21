class OrganizationsController < ApplicationController
  before_action :set_organization, only: %i[ show edit update destroy ]

  def index
    @organizations = Organization.all
  end

  def show; end

  def new
    @organization = Organization.new
  end

  def edit; end

  def create
    @organization = Organization.new(organization_params)
    @organization.save ? redirect_to(@organization) : render(:new)
  end

  def update
    @organization.update(organization_params) ? redirect_to(@organization) : render(:edit)
  end

  def destroy
    @organization.destroy
    redirect_to organizations_path
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def organization_params
    params.require(:organization).permit(:name, :ecoins)
  end
end
