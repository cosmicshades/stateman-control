class StatemanController < ApplicationController
  before_action :set_device, only: [:show, :edit, :update, :destroy]

  # GET /devices
  # GET /devices.json
  def index
    @actions = DeviceAction.all
  end

  # POST /devices
  # POST /devices.json
  def create
    @response = History.new(safe_params)
    #device
    #action_name
    #response
        #status
        #value
        #data
    respond_to do |format|
      if @response.save
        format.json { render :show, status: :created, location: @response }
      else
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def safe_params
      params.permit(:device, :action_name, :response)
    end
end
