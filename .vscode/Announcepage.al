page 65100 Announcement
//deepak 22-04-2025
{
    PageType = Card;
    SourceTable = Announcement;
    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Announcement No."; Rec."Announcement No.")
                {
                    ApplicationArea = all;
                }
                field("Announcement Type"; Rec."Announcement Type")
                {
                    ApplicationArea = all;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                }
                field("Date Created"; Rec."Date Created")
                {
                    ApplicationArea = all;
                }
                field(Priority; Rec.Priority)
                {
                    ApplicationArea = all;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }
                field(Closed; Rec.Closed)
                {
                    ApplicationArea = all;
                }
                field("Date Closed"; Rec."Date Closed")
                {
                    ApplicationArea = all;
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = all;
                }
                field(Canceled; Rec.Canceled)
                {
                    ApplicationArea = all;
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = all;
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = all;
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = all;
                }
                field(Subject; Rec.Subject)
                {
                    ApplicationArea = all;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = all;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}