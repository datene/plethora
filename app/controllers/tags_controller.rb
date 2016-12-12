class TagsController < ApplicationController
  def create
    @tag = Tag.new(tag_params)
    authorize @tag
    if @tag.save!
      respond_to do |format|
        format.html { redirect_to resources_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'resources/index' }
        format.js  # <-- idem
      end
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:resource_id, :title)
  end
end
