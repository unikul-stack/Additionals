tableextension 50210 CourseSubjectHeaderExtnTable extends "Course Subject Header - COL"
{
    fields
    {
        // Add changes to table fields here
        field(51010; Graduation; Code[20])
        {
            TableRelation = "Graduation - COLLEGE".Code;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here

    }
    var
        myInt: Integer;
}