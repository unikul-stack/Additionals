page 50101 "TRN Setup"
{
    //megha 1-4-2025
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "TRN Setup";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("TRN No."; Rec."TRN No.")
                {
                    ApplicationArea = ALL;
                }
                field("From Date"; Rec."From Date")
                {
                    ApplicationArea = ALL;
                }
                field("To Date"; Rec."To Date")
                {
                    ApplicationArea = ALL;
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = ALL;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}