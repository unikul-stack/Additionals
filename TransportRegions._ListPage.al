page 50104 "Transport Region List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Transport Regions";
    CardPageId = "Transport Regions";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = all;
                }
                field(Region; Rec.Region)
                {
                    ApplicationArea = all;
                }
                field("Transport Code"; Rec."Transport Code")
                {
                    ApplicationArea = all;
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