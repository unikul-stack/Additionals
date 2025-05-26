pageextension 50109 StudentAdditioonalDetails extends "Student Add. Details-COLLEGE"
{
    layout
    {
        addafter("Marital Status")
        {
            field("Permanent City"; Rec."Permanent City")
            {
                ApplicationArea = all;

            }
            field("Permanent Street"; Rec."Permanent Street")
            {
                ApplicationArea = all;
            }
            field("Permanent Country"; Rec."Permanent Country")
            {
                ApplicationArea = all;
            }
            field("Correspondence Street"; Rec."Correspondence Street")
            {
                ApplicationArea = all;
            }
            field("Correspondence City"; Rec."Correspondence City")
            {
                ApplicationArea = all;
            }
            field("Correnspondence Country"; Rec."Correnspondence Country")
            {
                ApplicationArea = all;
            }
            field(Nationality; Rec.Nationality)
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