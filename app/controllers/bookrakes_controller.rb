class BookrakesController < ApplicationController
  before_action :set_bookrake, only: %i[ show edit update destroy ]

  # GET /bookrakes or /bookrakes.json
  def index
    @bookrakes = Bookrake.all
  end

  # GET /bookrakes/1 or /bookrakes/1.json
  def show
  end

  # GET /bookrakes/new
  def new
    @bookrake = Bookrake.new
  end

  # GET /bookrakes/1/edit
  def edit
  end

  # POST /bookrakes or /bookrakes.json
  def create
    @bookrake = Bookrake.new(bookrake_params)

    respond_to do |format|
      if @bookrake.save
        format.html { redirect_to bookrake_url(@bookrake), notice: "Bookrake was successfully created." }
        format.json { render :show, status: :created, location: @bookrake }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookrake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookrakes/1 or /bookrakes/1.json
  def update
    respond_to do |format|
      if @bookrake.update(bookrake_params)
        format.html { redirect_to bookrake_url(@bookrake), notice: "Bookrake was successfully updated." }
        format.json { render :show, status: :ok, location: @bookrake }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookrake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookrakes/1 or /bookrakes/1.json
  def destroy
    @bookrake.destroy

    respond_to do |format|
      format.html { redirect_to bookrakes_url, notice: "Bookrake was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookrake
      @bookrake = Bookrake.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookrake_params
      params.require(:bookrake).permit(:db, :Book)
    end
end
