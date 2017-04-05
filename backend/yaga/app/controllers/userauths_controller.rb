class UserauthsController < ApplicationController
  before_action :set_userauth, only: [:show, :edit, :update, :destroy]

  # GET /userauths
  # GET /userauths.json
  def index
    @userauths = Userauth.all
  end

  # GET /userauths/1
  # GET /userauths/1.json
  def show
  end

  # GET /userauths/new
  def new
    @userauth = Userauth.new
  end

  # GET /userauths/1/edit
  def edit
  end

  # POST /userauths
  # POST /userauths.json
  def create
    @userauth = Userauth.new(userauth_params)

    respond_to do |format|
      if @userauth.save
        format.html { redirect_to @userauth, notice: 'Userauth was successfully created.' }
        format.json { render :show, status: :created, location: @userauth }
      else
        format.html { render :new }
        format.json { render json: @userauth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userauths/1
  # PATCH/PUT /userauths/1.json
  def update
    respond_to do |format|
      if @userauth.update(userauth_params)
        format.html { redirect_to @userauth, notice: 'Userauth was successfully updated.' }
        format.json { render :show, status: :ok, location: @userauth }
      else
        format.html { render :edit }
        format.json { render json: @userauth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userauths/1
  # DELETE /userauths/1.json
  def destroy
    @userauth.destroy
    respond_to do |format|
      format.html { redirect_to userauths_url, notice: 'Userauth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userauth
      @userauth = Userauth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userauth_params
      params.fetch(:userauth, {})
    end
end
