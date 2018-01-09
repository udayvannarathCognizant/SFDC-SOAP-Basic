/******************************* Extension class to Call the Web Service **********************************************/
public class CheckUSPhoneNumber {
    // Initialize the Variables 
    Public string parseValueCompany{get;set;}
    Public Boolean parseValueValid{get;set;}
    Public string parseValueUse{get;set;}
    Public string parseValueState{get;set;}
    Public string parseValueSwitch_x{get;set;}
    Public string parseValueRC{get;set;}
    Public string parseValueOCN{get;set;}
    Public string parseValueOriginalNumber{get;set;}
    Public string parseValueCleanNumber{get;set;}
    Public string parseValueSwitchName{get;set;}
    Public string parseValueSwitchType{get;set;}
    Public string parseValueCountry{get;set;}
    Public string parseValueCLLI{get;set;}
    Public string parseValuePrefixType{get;set;}
    Public string parseValueLATA{get;set;}
    Public string parseValuesms{get;set;}
    Public string parseValueEmail{get;set;}
    Public string parseValueAssignDate{get;set;}
    Public string parseValueTelecomCity{get;set;}
    Public string parseValueTelecomCounty{get;set;}
    Public string parseValueTelecomState{get;set;}
    Public string parseValueTelecomZip{get;set;}
    Public string parseValueTimeZone{get;set;}
    Public string parseValueLat{get;set;}
    Public string parseValueLong_x{get;set;}
    Public Boolean parseValueWireless{get;set;}
    Public string parseValueLRN{get;set;}    
    
    public boolean ren{get;set;} // Render Variable
    
    public CheckUSPhoneNumber() // Default Constuctor
    {
        	 ren= false; // Hide Page Block By Default
    }
    // Search Method which invokes the Web Service
    global void  Search()
    {
        ren= true; //Display the Page Block 
        String para = Apexpages.currentPage().getParameters().get('firstParam');  // Fetch the Param from Page
        
        // Instantiate the Method from Wsdl                 
        CheckUSPhoneValidity.PhoneVerifySoap ckp = new CheckUSPhoneValidity.PhoneVerifySoap(); 
        
        // Instantiate the Response Holder From Wsdl        
        CheckUSPhoneValidity.CheckPhoneNumbersResponse_element response_x = new   CheckUSPhoneValidity.CheckPhoneNumbersResponse_element();  
        CheckUSPhoneValidity.PhoneReturn y =ckp.CheckPhoneNumber(para,'');
        
        // Assign the Values to the Varibles
        parseValueCompany=y.Company;
        parseValueValid=y.Valid;
        parseValueUse=y.Use;
        parseValueState=y.State;
        parseValueSwitch_x=y.Switch_x;
        parseValueRC=y.Rc;
        parseValueOCN=y.OCN;
        parseValueOriginalNumber=y.OriginalNumber;
        parseValueCleanNumber=y.CleanNumber;
        parseValueSwitchName=y.SwitchName;
        parseValueSwitchType=y.SwitchType;
        parseValueCountry=y.Country;
        parseValueCLLI=y.CLLI;
        parseValuePrefixType=y.PrefixType;
        parseValueLATA=y.LATA;
        parseValuesms=y.sms;
        parseValueEmail=y.Email;
        parseValueAssignDate=y.AssignDate;
        parseValueTelecomCity=y.TelecomCity;
        parseValueTelecomCounty=y.TelecomCounty;
        parseValueTelecomState=y.TelecomState;
        parseValueTelecomZip=y.TelecomZip;
        parseValueTimeZone=y.TimeZone;
        parseValueLat=y.Lat;
        parseValueLong_x=y.Long_x;
        parseValueWireless=y.Wireless;
        parseValueLRN=y.LRN; 
            
    }
}
