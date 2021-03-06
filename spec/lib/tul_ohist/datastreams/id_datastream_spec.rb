describe "IdentifierDatastream" do

  subject do
    datastream = TulOhist::Datastreams::IdentifierDatastream.new
    datastream.content = <<EODS
<foxml:datastream ID="identifierMetadata" STATE="A" CONTROL_GROUP="X" VERSIONABLE="true">
  <foxml:datastreamVersion ID="identifierMetadata.0" LABEL="Identifier metadata" MIMETYPE="text/xml">
    <foxml:xmlContent>
      <fields>
        <doi>doi:00.00.00:temple0000</doi>
        <permanent_url>http://sample.com/pid</permanent_url>
        <master_identifier>UA0001_06042014jsmith</master_identifier>
      </fields>
    </foxml:xmlContent>
  </foxml:datastreamVersion>
</foxml:datastream>
EODS
    datastream
  end

  it { is_expected.to have_term(:doi) }
  it { is_expected.to have_term(:permanent_url) }
  it { is_expected.to have_term(:master_identifier) }

end
