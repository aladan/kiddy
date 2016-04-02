class HistoriesController < ApplicationController
  before_action :require_doctor, only: [:show, :new, :update]
  def new
    @history = History.new
  end

  def create
    @history = History.create(history_params)
    @history.doctor_id = current_doctor.id
    if @history.save
      redirect_to "/histories/#{@history.id}"
      else
        redirect_to 'histories/new'
      end
  end

  def show
    @history = History.find(params[:id])
  end

  def index
    @histories = History.all
  end

  def update
  end

  private
    def history_params
      params.require(:history).permit(:title, :description)
    end

    def set_history
      @history = History.find(history_params[:id])
    end
      
end
