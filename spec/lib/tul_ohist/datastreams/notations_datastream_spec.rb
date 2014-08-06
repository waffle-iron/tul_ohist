describe "NotationsDatastream" do
  before do
    @datastream = TulOhist::Datastreams::NotationsDatastream.new
    @datastream.content = <<EODS
<foxml:datastream ID="notationsMetadata" STATE="A" CONTROL_GROUP="X" VERSIONABLE="true">
  <foxml:datastreamVersion ID="notationsMetadata.0" LABEL="notations metadata" MIMETYPE="text/xml">
    <foxml:xmlContent>
      <fields>
        <notes>Lorem ipsum dolor sit amet, at cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</notes>
        <personal_names>Heather Douglas</personal_names>
        <personal_names>Peter Quill</personal_names>
        <biographical_history_note>Quisque tristique, mi nec sodales vulputate, nibh ipsum tincidunt quam, ut commodo mauris neque at velit.</biographical_history_note>
        <content_summary>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</content_summary>
        <collection_description>Etiam vel hendrerit leo. Fusce venenatis semper leo, id sagittis ipsum blandit non. Vestibulum et nibh nisi.</collection_description>
      </fields>
    </foxml:xmlContent>
  </foxml:datastreamVersion>
</foxml:datastream>
EODS
  end

  it "should have term notes" do
    expect(@datastream).to have_term(:notes)
  end

  it "should have term personal_names" do
    expect(@datastream).to have_term(:personal_names)
  end

  it "should have term biographical_history_note" do
    expect(@datastream).to have_term(:biographical_history_note)
  end

  it "should have term content_summary" do
    expect(@datastream).to have_term(:content_summary)
  end

  it "should have term collection_description" do
    expect(@datastream).to have_term(:collection_description)
  end

end
