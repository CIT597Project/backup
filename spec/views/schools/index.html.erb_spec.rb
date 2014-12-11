require 'rails_helper'

RSpec.describe "schools/index", :type => :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        :UNITID => 1,
        :INSTNM => "Instnm",
        :ADDR => "Addr",
        :CITY => "City",
        :STABBR => "Stabbr",
        :ZIP => "Zip",
        :FIPS => 2,
        :OBEREG => 3,
        :CHFNM => "Chfnm",
        :CHFTITLE => "Chftitle",
        :GENTELE => 4,
        :FAXTELE => 5,
        :EIN => 6,
        :OPEID => 7,
        :OPEFLAG => 8,
        :WEBADDR => "Webaddr",
        :ADMINURL => "Adminurl",
        :FAIDURL => "Faidurl",
        :string => "String",
        :APPLURL => "Applurl",
        :NPRICURL => "Npricurl",
        :SECTOR => 9,
        :ICLEVEL => 10,
        :CONTROL => 11,
        :HLOFFER => 12,
        :UGOFFER => 13,
        :GROFFER => 14,
        :HDEGOFR1 => 15,
        :DEGGRANT => 16,
        :HBCU => 17,
        :HOSPITAL => 18,
        :MEDICAL => 19,
        :TRIBAL => 20,
        :LOCALE => 21,
        :OPENPUBL => 22,
        :ACT => "Act",
        :NEWID => 23,
        :DEATHYR => 24,
        :CLOSEDAT => 25,
        :CYACTIVE => 26,
        :POSTSEC => 27,
        :PSEFLAG => 28,
        :PSET4FLG => 29,
        :RPTMTH => 30,
        :IALIAS => "Ialias",
        :INSTCAT => 31,
        :CCBASIC => 32,
        :CCIPUG => 33,
        :CCIPGRAD => 34,
        :CCUGPROF => 35,
        :CCENRPRF => 36,
        :CCSIZSET => 37,
        :CARNEGIE => 38,
        :LANDGRNT => 39,
        :INSTSIZE => 40,
        :CBSA => 41,
        :CBSATYPE => 42,
        :CSA => 43,
        :NECTA => 44,
        :F1SYSTYP => 45,
        :F1SYSNAM => "F1 Sysnam",
        :F1SYSCOD => 46,
        :COUNTYCD => 47,
        :COUNTYNM => "Countynm",
        :CNGDSTCD => 48,
        :LONGITUD => 1.5,
        :LATITUDE => 1.5
      ),
      School.create!(
        :UNITID => 1,
        :INSTNM => "Instnm",
        :ADDR => "Addr",
        :CITY => "City",
        :STABBR => "Stabbr",
        :ZIP => "Zip",
        :FIPS => 2,
        :OBEREG => 3,
        :CHFNM => "Chfnm",
        :CHFTITLE => "Chftitle",
        :GENTELE => 4,
        :FAXTELE => 5,
        :EIN => 6,
        :OPEID => 7,
        :OPEFLAG => 8,
        :WEBADDR => "Webaddr",
        :ADMINURL => "Adminurl",
        :FAIDURL => "Faidurl",
        :string => "String",
        :APPLURL => "Applurl",
        :NPRICURL => "Npricurl",
        :SECTOR => 9,
        :ICLEVEL => 10,
        :CONTROL => 11,
        :HLOFFER => 12,
        :UGOFFER => 13,
        :GROFFER => 14,
        :HDEGOFR1 => 15,
        :DEGGRANT => 16,
        :HBCU => 17,
        :HOSPITAL => 18,
        :MEDICAL => 19,
        :TRIBAL => 20,
        :LOCALE => 21,
        :OPENPUBL => 22,
        :ACT => "Act",
        :NEWID => 23,
        :DEATHYR => 24,
        :CLOSEDAT => 25,
        :CYACTIVE => 26,
        :POSTSEC => 27,
        :PSEFLAG => 28,
        :PSET4FLG => 29,
        :RPTMTH => 30,
        :IALIAS => "Ialias",
        :INSTCAT => 31,
        :CCBASIC => 32,
        :CCIPUG => 33,
        :CCIPGRAD => 34,
        :CCUGPROF => 35,
        :CCENRPRF => 36,
        :CCSIZSET => 37,
        :CARNEGIE => 38,
        :LANDGRNT => 39,
        :INSTSIZE => 40,
        :CBSA => 41,
        :CBSATYPE => 42,
        :CSA => 43,
        :NECTA => 44,
        :F1SYSTYP => 45,
        :F1SYSNAM => "F1 Sysnam",
        :F1SYSCOD => 46,
        :COUNTYCD => 47,
        :COUNTYNM => "Countynm",
        :CNGDSTCD => 48,
        :LONGITUD => 1.5,
        :LATITUDE => 1.5
      )
    ])
  end

  it "renders a list of schools" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Instnm".to_s, :count => 2
    assert_select "tr>td", :text => "Addr".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Stabbr".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Chfnm".to_s, :count => 2
    assert_select "tr>td", :text => "Chftitle".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => "Webaddr".to_s, :count => 2
    assert_select "tr>td", :text => "Adminurl".to_s, :count => 2
    assert_select "tr>td", :text => "Faidurl".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "Applurl".to_s, :count => 2
    assert_select "tr>td", :text => "Npricurl".to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
    assert_select "tr>td", :text => 16.to_s, :count => 2
    assert_select "tr>td", :text => 17.to_s, :count => 2
    assert_select "tr>td", :text => 18.to_s, :count => 2
    assert_select "tr>td", :text => 19.to_s, :count => 2
    assert_select "tr>td", :text => 20.to_s, :count => 2
    assert_select "tr>td", :text => 21.to_s, :count => 2
    assert_select "tr>td", :text => 22.to_s, :count => 2
    assert_select "tr>td", :text => "Act".to_s, :count => 2
    assert_select "tr>td", :text => 23.to_s, :count => 2
    assert_select "tr>td", :text => 24.to_s, :count => 2
    assert_select "tr>td", :text => 25.to_s, :count => 2
    assert_select "tr>td", :text => 26.to_s, :count => 2
    assert_select "tr>td", :text => 27.to_s, :count => 2
    assert_select "tr>td", :text => 28.to_s, :count => 2
    assert_select "tr>td", :text => 29.to_s, :count => 2
    assert_select "tr>td", :text => 30.to_s, :count => 2
    assert_select "tr>td", :text => "Ialias".to_s, :count => 2
    assert_select "tr>td", :text => 31.to_s, :count => 2
    assert_select "tr>td", :text => 32.to_s, :count => 2
    assert_select "tr>td", :text => 33.to_s, :count => 2
    assert_select "tr>td", :text => 34.to_s, :count => 2
    assert_select "tr>td", :text => 35.to_s, :count => 2
    assert_select "tr>td", :text => 36.to_s, :count => 2
    assert_select "tr>td", :text => 37.to_s, :count => 2
    assert_select "tr>td", :text => 38.to_s, :count => 2
    assert_select "tr>td", :text => 39.to_s, :count => 2
    assert_select "tr>td", :text => 40.to_s, :count => 2
    assert_select "tr>td", :text => 41.to_s, :count => 2
    assert_select "tr>td", :text => 42.to_s, :count => 2
    assert_select "tr>td", :text => 43.to_s, :count => 2
    assert_select "tr>td", :text => 44.to_s, :count => 2
    assert_select "tr>td", :text => 45.to_s, :count => 2
    assert_select "tr>td", :text => "F1 Sysnam".to_s, :count => 2
    assert_select "tr>td", :text => 46.to_s, :count => 2
    assert_select "tr>td", :text => 47.to_s, :count => 2
    assert_select "tr>td", :text => "Countynm".to_s, :count => 2
    assert_select "tr>td", :text => 48.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
