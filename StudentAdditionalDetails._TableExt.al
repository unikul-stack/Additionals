tableextension 50113 StudentAdditionalTableExt extends "Student Add. Details-COLLEGE"
{
    fields
    {
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
        field(50117; Nationality; Text[30])
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