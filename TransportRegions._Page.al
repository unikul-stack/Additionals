page 50100 "Transport Regions"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Transport Regions";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = all;
                    /* trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.update();
                    end; */
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

    }

    var
        myInt: Integer;
}