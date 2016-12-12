class ResourcesController < ApplicationController
  before_action :find_resource, only: [:show]

  def index
    if params[:filter].nil?
      @resources = policy_scope(Resource)
    else
      @resources = policy_scope(Resource).joins(:tags).where(tags: {title: params[:filter]})
    end
    @tag = Tag.new
  end

  def show
  end

  private

  def find_resource
    @resource = Resource.find(params[:id])
  end

end
