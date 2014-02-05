class TimeSlotsController < ApplicationController
  def index
    @time_slots = TimeSlot.all
  end

  def show
    @time_slot = TimeSlot.find(params[:id])
  end
end
