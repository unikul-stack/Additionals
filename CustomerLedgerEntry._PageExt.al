pageextension 50102 CustomerLedgerEntryPageExt extends "Customer Ledger Entries"
{
    //megha 1-4-2025
    layout
    {
        addbefore("External Document No.")
        {
            field("Enrollment No."; Rec."Enrollment No.")
            {
                ApplicationArea = ALL;
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