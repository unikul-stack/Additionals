pageextension 50106 StudentListPageExt extends "Student List - COLLEGE"
{
    layout
    {
        addafter("Hostel Code")
        {
            field("Emirate Code"; Rec."Emirate Code")
            {
                ApplicationArea = all;
            }
            field(Region; Rec.Region)
            {
                ApplicationArea = all;
            }
            field("Visa Type"; Rec."Visa Type")
            {
                ApplicationArea = all;
            }
            field("Permanent Street"; Rec."Permanent Street")
            {
                ApplicationArea = all;
            }
            field("Permanent City"; Rec."Permanent City")
            {
                ApplicationArea = all;
            }
            field("Permanent Country"; Rec."Permanent Country")
            {
                ApplicationArea = all;
            }
            field("Correspondence Street"; Rec."Correspondence Street")
            {
                ApplicationArea = all;

            }
            field("Correspondence City"; Rec."Correspondence City")
            {
                ApplicationArea = all;
            }
            field("Correnspondence Country"; Rec."Correnspondence Country")
            {
                ApplicationArea = all;
            }
            field("Visa No."; Rec."Visa No.")
            {
                ApplicationArea = all;
            }
            field("Visa Expiration Date"; Rec."Visa Expiration Date")
            {
                ApplicationArea = all;
            }
            field("Passport No."; Rec."Passport No.")
            {
                ApplicationArea = all;
            }
            field("Passport Expiration Date"; Rec."Passport Expiration Date")
            {
                ApplicationArea = all;
            }
            field("Name on Passport"; Rec."Name on Passport")
            {
                ApplicationArea = all;
            }
            field("Father's Name"; Rec."Father's Name")
            {
                ApplicationArea = all;
            }
            field("Father's Email-ID"; Rec."Father's Email-ID")
            {
                ApplicationArea = all;
            }
            field("Father's Contact No."; Rec."Father's Contact No.")
            {
                ApplicationArea = all;
            }
            field(Occupation; Rec.Occupation)
            {
                ApplicationArea = all;
            }
            field("Mother's Name"; Rec."Mother's Name")
            {
                ApplicationArea = all;
            }
            field("Mother's Contact No."; Rec."Mother's Contact No.")
            {
                ApplicationArea = all;
            }
            field("Mother's Email ID"; Rec."Mother's Email ID")
            {
                ApplicationArea = all;
            }
            field("Mother's Occupation"; Rec."Mother's Occupation")
            {
                ApplicationArea = all;
            }
            field("Guardian Name"; Rec."Guardian Name")
            {
                ApplicationArea = all;
            }
            field("Guardian Email ID"; Rec."Guardian Email ID")
            {
                ApplicationArea = all;
            }
            field("Guardian Phone No."; Rec."Guardian Phone No.")
            {
                ApplicationArea = all;
            }
            field("Guardian Occupation"; Rec."Guardian Occupation")
            {
                ApplicationArea = all;
            }
            field("Emirate ID"; Rec."Emirate ID")
            {
                ApplicationArea = all;
            }
            field("Contact Person"; Rec."Contact Person")
            {
                ApplicationArea = all;
            }
            field("How do you know about us"; Rec."How do you know about us")
            {
                ApplicationArea = all;
            }
            // field("Blood Group"; Rec."Blood Group")
            // {
            //     ApplicationArea = all;
            // }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}