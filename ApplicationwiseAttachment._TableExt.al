tableextension 50101 ApplicantAttachmentTbl extends "Applicant Wise Attachment Tbl"
{
    //megha 1-4-2025
    fields
    {
        field(50000; "Admitted Year"; Code[20])
        {
            TableRelation = "Academic Year";

        }
        field(50001; Drive; Code[20])
        {
            TableRelation = "Drive Cust";

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