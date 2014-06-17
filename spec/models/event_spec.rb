require 'spec_helper'

describe Event do

	before do
		@event = Event.new(description: 'Lorem ipsum')
	end

	subject { @event }

	it { should respond_to(:description) }


end
