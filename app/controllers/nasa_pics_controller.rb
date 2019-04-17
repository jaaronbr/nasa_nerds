class NasaPicsController < ApplicationController

  def create
    @current_user = current_user
    @pic = NasaPic.create(parse_pic_info)
    if @pic.save
      flash[:success] = "Your Pic Has Been Added"
      redirect_to users_path
    else
      flash[:error] = "Not Added, Please try again"
      render root_path
    end
  end

  def destroy
    @pic = NasaPic.find(params[:id])
    @pic.destroy
    flash[:success] = 'Picture Removed'
    redirect_to users_path
  end

  private

  def pic_params
    params.require(:nasa_pic).permit(:title, :description, :image, :date_taken)
  end

  def parse_pic_info
    @updated_info = {
      title: params["nasa_pic"]["title"],
      description: params["nasa_pic"]["explanation"],
      image: params["nasa_pic"]["url"],
      date_taken: params["nasa_pic"]["date"],
      user_id: params["user_id"]
    }
  end
end
