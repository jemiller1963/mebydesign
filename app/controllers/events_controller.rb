class EventsController < ApplicationController
  def index
  	@events = Event.paginate(page: params[:page], per_page: 10)
  end

  def new
  	@event = Event.new
  end

  def show
    begin
      @event = Event.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render :status => 404
    end
  end

  def edit
  	@event = Event.find(params[:id])	
  end

  def create
  	@event = Event.new(event_params)
  	if @event.save
  		flash[:success] = 'Event created successfully'
  		redirect_to event_path(@event.id)
  	else
  		render 'new'
  	end
  end

  def update
  	@event = Event.find(params[:id])
  	if @event.update_attributes(event_params)
  		flash[:success] = 'Event updated'
  		redirect_to event_path
  	else
  		render 'edit'
  	end
  end

  # def destroy
  # 	@event = Event.find(params[:id]).destroy
  # 	redirect_to root_path
  # end



private

	def event_params
		params.require(:event).permit(:event_name, 
										:description,
										:sdate,
										:edate,
										:link)	
	end
end