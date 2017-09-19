# encoding: utf-8
require "logstash/devutils/rspec/spec_helper"
require "logstash/outputs/rrdtool"
require "logstash/codecs/plain"
require "logstash/event"

describe LogStash::Outputs::Rrdtool do
  let(:sample_event) { LogStash::Event.new }
  let(:output) { LogStash::Outputs::Rrdtool.new }

  before do
    output.register
  end

  describe "receive message" do
    subject { output.receive(sample_event) }

    it "returns a string" do
      expect(subject).to eq("Event received")
    end
  end
end
