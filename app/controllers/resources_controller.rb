class ResourcesController < ApplicationController
  before_action :find_resource, only: [:show]

  def index
    @resources = policy_scope(Resource)
  end

  def show
  end

  private

  def find_resource
    @resource = Resource.find(params[:id])
  end

end
