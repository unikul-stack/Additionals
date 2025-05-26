pageextension 50113 EmployeeListPageExt extends "Employee List"
{
    layout
    {
        addafter("Mobile Phone No.")
        {
            field("Password Changed Date"; Rec."Password Changed Date")
            {
                ApplicationArea = all;
            }
            field("Password Changed"; Rec."Password Changed")
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