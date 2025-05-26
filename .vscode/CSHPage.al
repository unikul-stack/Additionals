pageextension 50210 CSHCardpage extends "Course Subject Header - COL"
{
    //Deepak 18-04-2025
    layout
    {
        addafter("Academic Year")
        {

            field(Graduation; Rec.Graduation)
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