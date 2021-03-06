describe 'Transcript' do

  context 'Transcript Class' do
    subject { Transcript.new }

    it { is_expected.to have_metadata_stream_of_type(TulOhist::Datastreams::BaseDatastream) }
    it { is_expected.to have_metadata_stream_of_type(TulOhist::Datastreams::InterviewContentDatastream) }
    it { is_expected.to have_metadata_stream_of_type(TulOhist::Datastreams::DigitalDatastream) }
  end

  context 'Transcript Object' do
    subject (:compound_object_controller) { CompoundObjectsController.new }

    let (:t) { FactoryGirl.build(:transcript) }
    let (:transcript) { Transcript.create(master_identifier: t.master_identifier, title: t.title, type: t.type) }

    before do
      transcript.update_index
    end

    it "should find the transcript" do
      object = ActiveFedora::Base.where(master_identifier_ssim: t.master_identifier).to_a 
      expect(object.first.master_identifier).to match_array(t.master_identifier)
    end
  end

end
