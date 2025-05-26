tableextension 50103 StudentCol extends "Student - COLLEGE"
{
    //megha 1-4-2025
    fields
    {
        field(50109; "Emirate Code"; Code[20])
        {
            TableRelation = "Transport Setup"."Transport Code";
            ValidateTableRelation = false;
        }
        field(50110; Region; Text[20])
        {
            TableRelation = "Country/Region".Name;
            ValidateTableRelation = false;
        }
        field(50111; "Permanent City"; Text[30])
        {

        }
        field(50112; "Permanent Street"; Text[30])
        {

        }
        field(50113; "Permanent Country"; Text[20])
        {

        }
        field(50114; "Correspondence Street"; Text[30])
        {

        }
        field(50115; "Correnspondence Country"; Text[30])
        {

        }
        field(50116; "Correspondence City"; Text[30])
        {

        }
        field(50117; "Visa No."; Code[20])
        {

        }
        field(50118; "Visa Expiration Date"; Date)
        {

        }
        field(50119; "Passport No."; Code[20])
        {

        }
        field(50120; "Passport Expiration Date"; Date)
        {

        }
        field(50121; "Name on Passport"; Text[60])
        {

        }
        field(50122; "Father's Email-ID"; Text[20])
        {

        }
        field(50123; "Father's Name"; Text[20])
        {

        }
        field(50124; "Father's Contact No."; Text[10])
        {

        }
        field(50125; Occupation; Text[30])
        {

        }
        field(50126; "Mother's Name"; Text[40])
        {

        }
        field(50127; "Mother's Contact No."; Text[20])
        {

        }
        field(50128; "Mother's Email ID"; Text[20])
        {

        }
        field(50129; "Mother's Occupation"; Text[30])
        {

        }
        field(50130; "Guardian Name"; Text[50])
        {

        }
        field(50131; "Guardian Email ID"; Text[20])
        {

        }
        field(50132; "Guardian Phone No."; Text[20])
        {

        }
        field(50133; "Guardian Occupation"; Text[15])
        {

        }
        field(50134; "Emirate ID"; Text[30])
        {

        }
        field(50135; "Contact Person"; Text[50])
        {

        }
        field(50136; "How do you know about us"; Text[50])
        {

        }

        field(50138; "Visa Type"; Text[30])
        {

        }


    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}