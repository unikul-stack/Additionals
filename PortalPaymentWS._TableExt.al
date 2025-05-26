tableextension 50104 PortalPaymentWSTableExt extends PortalPaymentGateWay
{
    //megha 1-4-2025
    fields
    {
        field(50100; "Transport Code"; Code[20])
        {
            TableRelation = "Transport Setup"."Transport Code";
            ValidateTableRelation = false;
        }
        field(50101; "Emirate Code"; Text[10])
        {

        }
        field(50102; Region; Code[20])
        {
            TableRelation = "Country/Region";
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