pageextension 50100 ApplocantWiseAttachment extends "Applicant wise attachment list"
{
    //megha 1-4-2025
    layout
    {
        addafter("Applicant No.")
        {
            field("Admitted Year"; Rec."Admitted Year")
            {
                ApplicationArea = all;
            }
            field(Drive; Rec.Drive)
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