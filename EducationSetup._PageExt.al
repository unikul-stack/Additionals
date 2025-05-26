pageextension 50108 EducationSetup extends "Education Setup"
{
    layout
    {
        addafter("Announcement No.")
        {
            field("Visa No.s"; Rec."Visa No.s")
            {

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