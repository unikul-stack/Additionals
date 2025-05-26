tableextension 50110 EducationSetupExt extends "Education Setup"
{
    fields
    {
        field(50000; "Visa No.s"; Code[20])
        {
            TableRelation = "No. Series";
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