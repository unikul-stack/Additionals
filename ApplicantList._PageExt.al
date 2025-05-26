pageextension 50105 ApplicantListPageExt extends "Applicants List"
{
    //megha 1-4-2025
    layout
    {
        addafter(Status)
        {
            field(Status_Changed_by; Rec.Status_Changed_by)
            {
                ApplicationArea = all;
            }
            field("Confirm Advice"; Rec."Confirm Advice")
            {
                ApplicationArea = all;
            }
            field("Result Percentage"; Rec."Result Percentage")
            {
                ApplicationArea = all;
            }
            field(Geo; Rec.Geo)
            {
                ApplicationArea = all;
            }
            field("Visa No."; Rec."Visa No.")
            {
                ApplicationArea = all;
            }
            field("Visa Expiry Date"; Rec."Visa Expiry Date")
            {
                ApplicationArea = all;
            }

            field("AO Confirmed"; Rec."AO Confirmed")
            {
                ApplicationArea = all;
            }
            field("AO Confirmed On"; Rec."AO Confirmed On")
            {
                ApplicationArea = all;
            }
            field("Fee Advice Confirmed"; Rec."Fee Advice Confirmed")
            {
                ApplicationArea = all;
            }
            field("Fee Advice Confirmed On"; Rec."Fee Advice Confirmed On")
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