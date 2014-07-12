require 'spec_helper'

describe Event do

	it { should respond_to(:event_name) }
	it { should respond_to(:description) }
	it { should respond_to(:sdate) }
	it { should respond_to(:edate) }
	it { should respond_to(:link) }

		describe "validations" do


			describe "Presence and length of Event Name" do
			before { subject.valid? }
				[ :event_name ].each do |ename|
					context "when #{ename} is nill" do
						subject { Event.new(ename => nil )}
						it "should not allow blank #{ename}" do
							expect(subject.errors_on(ename)).to include("can't be blank")
						end
					end

					context "when #{ename} is too long" do
						subject { Event.new(ename => "a" * 160 )}
						it "should not allow #{ename} to be too long" do
							should ensure_length_of(ename).is_at_most(150)
						end
					end
				end
			end


			describe "Presence and length of Event Descriptions" do
			before { subject.valid? }
				[ :description ].each do |edesc|
					context "when #{edesc} is nill" do
						subject { Event.new(edesc => nil )}
						it "should not allow blank #{edesc}" do
							expect(subject.errors_on(edesc)).to include("can't be blank")
						end
					end

					context "when #{edesc} is too long" do
						subject { Event.new(edesc => "a" * 160 )}
						it "should not allow #{edesc} to be too long" do
							should ensure_length_of(edesc).is_at_most(170)
						end
					end
				end
			end


			describe "Presence Event Start Date" do
			before { subject.valid? }
				[ :sdate ].each do |start_date|
					context "when #{start_date} is nill" do
						subject { Event.new(start_date => nil )}
						it "should not allow blank #{start_date}" do
							expect(subject.errors_on(start_date)).to include("can't be blank")
						end
					end

				end
			end


			describe "Presence Event End Date" do
			before { subject.valid? }
				[ :edate ].each do |end_date|
					context "when #{end_date} is nill" do
						subject { Event.new(end_date => nil )}
						it "should not allow blank #{end_date}" do
							expect(subject.errors_on(end_date)).to include("can't be blank")
						end
					end

				end
			end


			describe "Presence of Event Link" do
			before { subject.valid? }
				[ :link ].each do |elink|
					context "when #{elink} is nill" do
						subject { Event.new(elink => nil )}
						it "should not allow blank #{elink}" do
							expect(subject.errors_on(elink)).to include("can't be blank")
						end
					end

				end
			end



# describe Email, '#sender' do
#   it { should allow_value("email@addresse.foo").for(:sender) }
#   it { should_not allow_value("foo").for(:sender) }
# end

		end
end