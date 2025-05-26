pageextension 50107 PortalPaymentWSPageExt extends PortalPaymentWS
{
    layout
    {
        addafter(Payment_GateWay_Code)
        {
            field("Transport Code"; Rec."Transport Code")
            {
                ApplicationArea = all;
            }
            field("Emirate Code"; Rec."Emirate Code")
            {
                ApplicationArea = all;
            }
            field(Region; Rec.Region)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}