FactoryGirl.define do
  factory :transcript do
    master_identifier ["AOH1093X20140828fred"]
    title ["Oral history interview with Fred"]
    date ["2014-08-31"]
    type ["Transcript"]
    # CONTENTdm attributes
    date_created "2014-07-07"
    date_modified "2014-08-07"
    contentdm_number "0"
    contentdm_file_name "1.pdf"
    contentdm_file_path "/p16002coll21/image/1.pdf"
    contentdm_collection_id "p16002coll21"
    # Related items
    repository_collection ["Oral Histories"]
    finding_aid_link ["http://findingaids.library.temple.edu/fred"]
    finding_aid_title ["Finding Aid of Fred"]
    online_exhibit_link ["http://online-exhibit.library.temple.edu"]
    online_exhibit_title ["Online Exhibit of Fred"]
    catalog_record_link ["http://catalog.library.temple.edu/fred"]
    catalog_record_title ["Catalog Record of Fred"]
  end
end
