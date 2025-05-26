tableextension 50100 ApplicantTableExt extends ApplicantsTbl
{
    fields
    {
        //megha 1-4-2025
        field(50111; "AO Confirmed"; Boolean)
        {

        }
        field(50112; "AO Confirmed On"; DateTime)
        {

        }
        field(50113; "Fee Advice Confirmed"; Boolean)
        {

        }
        field(50114; "Fee Advice Confirmed On"; DateTime)
        {

        }
        field(50115; "Status_Changed_by"; Text[20])
        {

        }
        field(50116; "Confirm Advice"; Boolean)
        {

        }
        field(50117; Geo; Code[20])
        {

        }
        field(50118; "Result Percentage"; Decimal)
        {

        }
        field(50119; "Visa No."; Code[20])
        {

        }
        field(50120; "Visa Expiry Date"; Date)
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