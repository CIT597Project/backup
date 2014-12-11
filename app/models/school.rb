class School< ActiveRecord::Base
  has_many :my_schools
  has_many :users, through: :my_schools
  self.table_name = "DREAMDESIGN.SCHOOLS"
  has_many :reviews
 
  # def school_params
#       params.require(:school).permit(:Instituion_ID, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
#   :Institution_Phone, :Institution_OPEID, :Institution_IPEDS_UnitID, :Institution_Web_Address, :Campus_ID, :Campus_Name,
#   :Campus_Address, :Campus_City, :Campus_State, :Campus_Zip, :Campus_IPEDS_UnitID, :Accreditation_Type, :Agency_Name,
#   :Agency_Status, :Program_Name, :Accreditation_Status,  :Accreditation_Date_Type, :Periods, :Last_Action)
#  end

  def self.search(search)
   if search
     where(['"Institution_Name" LIKE ?', "%#{search}%"]) 
   else
    scoped
   end
  end

  
end



