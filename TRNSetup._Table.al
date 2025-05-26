table 50100 "TRN Setup"
{
    //megha 1-4-2025
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "TRN No."; Code[20])
        {

        }
        field(2; "From Date"; Date)
        {

        }
        field(3; "To Date"; Date)
        {

        }
        field(4; Active; Boolean)
        {

        }
    }

    keys
    {
        key(PK; "TRN No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}