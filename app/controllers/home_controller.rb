class HomeController < ApplicationController
  def index
    @item = Item.all
    @profiles = Profile.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(
        :style,
        :name,
        :description,
        :image,
        :condition,
        :price,
        :user_id
      )
    end
end
