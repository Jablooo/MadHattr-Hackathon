# initial comment
class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index; end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    redirect_to new_profiles_url if @profile.nil?
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    @profile = Profile.find_or_initialize_by(user: current_user)
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    respond_to do |format|
      if @profile.save
        format.html { render :show, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { render :show, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions. CORRECTED METHOD BY RUBOCOP
  def set_profile
    @profile = if params[:id]

                 Profile.find_by!(user_id: params[:id])
               else

                 Profile.find_by(user: current_user)
               end
  end
  # _________________________
  # ORIGINAL PIECE OF CODE BEFORE RUBOCOP. CONVENTION
  # _________________________
  # def set_profile
  #   if params[:id]
  #
  #     @profile = Profile.find_by!(user_id: params[:id])
  #   else
  #
  #     @profile = Profile.find_by(user: current_user)
  #   end
  # end
  # _________________________

  # Never trust parameters from the scary internet, only allow the white list through.
  def profile_params
    params.require(:profile).permit(
      :avatar,
      :username,
      :first_name,
      :last_name,
      :address,
      :postcode,
      :city,
      :country,
      :user_id
    )
  end
end
