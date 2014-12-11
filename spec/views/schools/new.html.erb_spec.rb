require 'rails_helper'

RSpec.describe "schools/new", :type => :view do
  before(:each) do
    assign(:school, School.new(
      :UNITID => 1,
      :INSTNM => "MyString",
      :ADDR => "MyString",
      :CITY => "MyString",
      :STABBR => "MyString",
      :ZIP => "MyString",
      :FIPS => 1,
      :OBEREG => 1,
      :CHFNM => "MyString",
      :CHFTITLE => "MyString",
      :GENTELE => 1,
      :FAXTELE => 1,
      :EIN => 1,
      :OPEID => 1,
      :OPEFLAG => 1,
      :WEBADDR => "MyString",
      :ADMINURL => "MyString",
      :FAIDURL => "MyString",
      :string => "MyString",
      :APPLURL => "MyString",
      :NPRICURL => "MyString",
      :SECTOR => 1,
      :ICLEVEL => 1,
      :CONTROL => 1,
      :HLOFFER => 1,
      :UGOFFER => 1,
      :GROFFER => 1,
      :HDEGOFR1 => 1,
      :DEGGRANT => 1,
      :HBCU => 1,
      :HOSPITAL => 1,
      :MEDICAL => 1,
      :TRIBAL => 1,
      :LOCALE => 1,
      :OPENPUBL => 1,
      :ACT => "MyString",
      :NEWID => 1,
      :DEATHYR => 1,
      :CLOSEDAT => 1,
      :CYACTIVE => 1,
      :POSTSEC => 1,
      :PSEFLAG => 1,
      :PSET4FLG => 1,
      :RPTMTH => 1,
      :IALIAS => "MyString",
      :INSTCAT => 1,
      :CCBASIC => 1,
      :CCIPUG => 1,
      :CCIPGRAD => 1,
      :CCUGPROF => 1,
      :CCENRPRF => 1,
      :CCSIZSET => 1,
      :CARNEGIE => 1,
      :LANDGRNT => 1,
      :INSTSIZE => 1,
      :CBSA => 1,
      :CBSATYPE => 1,
      :CSA => 1,
      :NECTA => 1,
      :F1SYSTYP => 1,
      :F1SYSNAM => "MyString",
      :F1SYSCOD => 1,
      :COUNTYCD => 1,
      :COUNTYNM => "MyString",
      :CNGDSTCD => 1,
      :LONGITUD => 1.5,
      :LATITUDE => 1.5
    ))
  end

  it "renders new school form" do
    render

    assert_select "form[action=?][method=?]", schools_path, "post" do

      assert_select "input#school_UNITID[name=?]", "school[UNITID]"

      assert_select "input#school_INSTNM[name=?]", "school[INSTNM]"

      assert_select "input#school_ADDR[name=?]", "school[ADDR]"

      assert_select "input#school_CITY[name=?]", "school[CITY]"

      assert_select "input#school_STABBR[name=?]", "school[STABBR]"

      assert_select "input#school_ZIP[name=?]", "school[ZIP]"

      assert_select "input#school_FIPS[name=?]", "school[FIPS]"

      assert_select "input#school_OBEREG[name=?]", "school[OBEREG]"

      assert_select "input#school_CHFNM[name=?]", "school[CHFNM]"

      assert_select "input#school_CHFTITLE[name=?]", "school[CHFTITLE]"

      assert_select "input#school_GENTELE[name=?]", "school[GENTELE]"

      assert_select "input#school_FAXTELE[name=?]", "school[FAXTELE]"

      assert_select "input#school_EIN[name=?]", "school[EIN]"

      assert_select "input#school_OPEID[name=?]", "school[OPEID]"

      assert_select "input#school_OPEFLAG[name=?]", "school[OPEFLAG]"

      assert_select "input#school_WEBADDR[name=?]", "school[WEBADDR]"

      assert_select "input#school_ADMINURL[name=?]", "school[ADMINURL]"

      assert_select "input#school_FAIDURL[name=?]", "school[FAIDURL]"

      assert_select "input#school_string[name=?]", "school[string]"

      assert_select "input#school_APPLURL[name=?]", "school[APPLURL]"

      assert_select "input#school_NPRICURL[name=?]", "school[NPRICURL]"

      assert_select "input#school_SECTOR[name=?]", "school[SECTOR]"

      assert_select "input#school_ICLEVEL[name=?]", "school[ICLEVEL]"

      assert_select "input#school_CONTROL[name=?]", "school[CONTROL]"

      assert_select "input#school_HLOFFER[name=?]", "school[HLOFFER]"

      assert_select "input#school_UGOFFER[name=?]", "school[UGOFFER]"

      assert_select "input#school_GROFFER[name=?]", "school[GROFFER]"

      assert_select "input#school_HDEGOFR1[name=?]", "school[HDEGOFR1]"

      assert_select "input#school_DEGGRANT[name=?]", "school[DEGGRANT]"

      assert_select "input#school_HBCU[name=?]", "school[HBCU]"

      assert_select "input#school_HOSPITAL[name=?]", "school[HOSPITAL]"

      assert_select "input#school_MEDICAL[name=?]", "school[MEDICAL]"

      assert_select "input#school_TRIBAL[name=?]", "school[TRIBAL]"

      assert_select "input#school_LOCALE[name=?]", "school[LOCALE]"

      assert_select "input#school_OPENPUBL[name=?]", "school[OPENPUBL]"

      assert_select "input#school_ACT[name=?]", "school[ACT]"

      assert_select "input#school_NEWID[name=?]", "school[NEWID]"

      assert_select "input#school_DEATHYR[name=?]", "school[DEATHYR]"

      assert_select "input#school_CLOSEDAT[name=?]", "school[CLOSEDAT]"

      assert_select "input#school_CYACTIVE[name=?]", "school[CYACTIVE]"

      assert_select "input#school_POSTSEC[name=?]", "school[POSTSEC]"

      assert_select "input#school_PSEFLAG[name=?]", "school[PSEFLAG]"

      assert_select "input#school_PSET4FLG[name=?]", "school[PSET4FLG]"

      assert_select "input#school_RPTMTH[name=?]", "school[RPTMTH]"

      assert_select "input#school_IALIAS[name=?]", "school[IALIAS]"

      assert_select "input#school_INSTCAT[name=?]", "school[INSTCAT]"

      assert_select "input#school_CCBASIC[name=?]", "school[CCBASIC]"

      assert_select "input#school_CCIPUG[name=?]", "school[CCIPUG]"

      assert_select "input#school_CCIPGRAD[name=?]", "school[CCIPGRAD]"

      assert_select "input#school_CCUGPROF[name=?]", "school[CCUGPROF]"

      assert_select "input#school_CCENRPRF[name=?]", "school[CCENRPRF]"

      assert_select "input#school_CCSIZSET[name=?]", "school[CCSIZSET]"

      assert_select "input#school_CARNEGIE[name=?]", "school[CARNEGIE]"

      assert_select "input#school_LANDGRNT[name=?]", "school[LANDGRNT]"

      assert_select "input#school_INSTSIZE[name=?]", "school[INSTSIZE]"

      assert_select "input#school_CBSA[name=?]", "school[CBSA]"

      assert_select "input#school_CBSATYPE[name=?]", "school[CBSATYPE]"

      assert_select "input#school_CSA[name=?]", "school[CSA]"

      assert_select "input#school_NECTA[name=?]", "school[NECTA]"

      assert_select "input#school_F1SYSTYP[name=?]", "school[F1SYSTYP]"

      assert_select "input#school_F1SYSNAM[name=?]", "school[F1SYSNAM]"

      assert_select "input#school_F1SYSCOD[name=?]", "school[F1SYSCOD]"

      assert_select "input#school_COUNTYCD[name=?]", "school[COUNTYCD]"

      assert_select "input#school_COUNTYNM[name=?]", "school[COUNTYNM]"

      assert_select "input#school_CNGDSTCD[name=?]", "school[CNGDSTCD]"

      assert_select "input#school_LONGITUD[name=?]", "school[LONGITUD]"

      assert_select "input#school_LATITUDE[name=?]", "school[LATITUDE]"
    end
  end
end
