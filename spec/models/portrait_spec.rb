describe 'Portrait' do
  subject { Portrait.new }

  it { is_expected.to have_datastream_of_type("base", TulOhist::Datastreams::BaseDatastream) }
  it { is_expected.to have_datastream_of_type("digital", TulOhist::Datastreams::DigitalDatastream) }
end