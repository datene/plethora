# app/controllers/api/v1/resources_controller.rb
class Api::V1::ResourcesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_resource, only: [ :show, :update ]

  def index
    @resources = policy_scope(Resource)
  end

  def show
  end

  def create
    @resource = Resource.new(resource_params)
    @resource.user = current_user
    authorize @resource
    if @resource.save!
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @resource.update(resource_params)
      render :show
    else
      render_error
    end
  end

  private

  def resource_params
    params.permit(:title, :url, :description)
  end

  def render_error
    render json: { errors: @resource.errors.full_messages },
      status: :unprocessable_entity
  end

  def set_resource
    @resource = Resource.find(params[:id])
    authorize @resource  # For Pundit
  end
end