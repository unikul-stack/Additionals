tableextension 50100 ApplicantTableExt extends ApplicantsTbl
{
    fields
    {
        //megha 1-4-2025
        field(50101; "AO Confirmed"; Boolean)
        {

        }
        field(50102; "AO Confirmed On"; DateTime)
        {

        }
        field(50103; "Fee Advice Confirmed"; Boolean)
        {

        }
        field(50104; "Fee Advice Confirmed On"; DateTime)
        {

        }
        field(50105; "Status_Changed_by"; Text[20])
        {

        }
        field(50106; "Confirm Advice"; Boolean)
        {

        }
        field(50107; Geo; Code[20])
        {

        }
        field(50108; "Result Percentage"; Decimal)
        {

        }
        field(50109; "Visa No."; Code[20])
        {

        }
        field(50110; "Visa Expiry Date"; Date)
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