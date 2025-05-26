pageextension 50209 CoursesubjectHeaderExtnPage extends "Course Subject Header List-COL"
{
    //Deepak 18-04-2025
    layout
    {
        addafter("Academic Year")
        {
            field(Session; Rec.Session)
            {
                ApplicationArea = all;
            }
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