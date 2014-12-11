require 'rails_helper'

RSpec.describe "schools/show", :type => :view do
  before(:each) do
    @school = assign(:school, School.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Instnm/)
    expect(rendered).to match(/Addr/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Stabbr/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Chfnm/)
    expect(rendered).to match(/Chftitle/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/Webaddr/)
    expect(rendered).to match(/Adminurl/)
    expect(rendered).to match(/Faidurl/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/Applurl/)
    expect(rendered).to match(/Npricurl/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
    expect(rendered).to match(/16/)
    expect(rendered).to match(/17/)
    expect(rendered).to match(/18/)
    expect(rendered).to match(/19/)
    expect(rendered).to match(/20/)
    expect(rendered).to match(/21/)
    expect(rendered).to match(/22/)
    expect(rendered).to match(/Act/)
    expect(rendered).to match(/23/)
    expect(rendered).to match(/24/)
    expect(rendered).to match(/25/)
    expect(rendered).to match(/26/)
    expect(rendered).to match(/27/)
    expect(rendered).to match(/28/)
    expect(rendered).to match(/29/)
    expect(rendered).to match(/30/)
    expect(rendered).to match(/Ialias/)
    expect(rendered).to match(/31/)
    expect(rendered).to match(/32/)
    expect(rendered).to match(/33/)
    expect(rendered).to match(/34/)
    expect(rendered).to match(/35/)
    expect(rendered).to match(/36/)
    expect(rendered).to match(/37/)
    expect(rendered).to match(/38/)
    expect(rendered).to match(/39/)
    expect(rendered).to match(/40/)
    expect(rendered).to match(/41/)
    expect(rendered).to match(/42/)
    expect(rendered).to match(/43/)
    expect(rendered).to match(/44/)
    expect(rendered).to match(/45/)
    expect(rendered).to match(/F1 Sysnam/)
    expect(rendered).to match(/46/)
    expect(rendered).to match(/47/)
    expect(rendered).to match(/Countynm/)
    expect(rendered).to match(/48/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
