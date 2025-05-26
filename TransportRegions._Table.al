table 50101 "Transport Regions"
{


    fields
    {
        field(1; "Line No."; Code[10])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Edu.get();
                //Edu.TestField("Region Transport No's");
                if "Line No." <> xRec."Line No." then begin

                    NoSeriesMgmt.TestManual(Edu."Region Transport No's");

                    "No. Series" := '';
                end;
            end;


        }
        field(2; "Region"; Code[100])
        {

        }
        field(3; "Transport Code"; Text[10])
        {
            TableRelation = "Transport Setup"."Transport Code";
            ValidateTableRelation = false;


        }
        field(4; "No. Series"; Code[10]) { }

    }

    keys
    {
        key(NewKey; "Line No.")
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
        Edu.Get();
        //Edu.TestField("Region Transport No's");
        if "Line No." = '' then begin
            Edu.TestField("Region Transport No's");
            NoSeriesMgmt.InitSeries(Edu."Region Transport No's", xRec."No. Series", 0D, "Line No.", "No. Series");
        end;
    end;

    /* procedure AssistEdit(TransportReg: Record "Transport Regions"): Boolean;
    var
        TransRec: Record "Transport Regions";
        EDuSetup: Record "Education Setup";
    begin
        TransRec := Rec;
        Edu.GET;
        Edu.TESTFIELD("Region Transport No's");
        IF NoSeriesMgmt.SelectSeries(Edu."Region Transport No's", TransportReg."Line No.", TransRec."Line No.") THEN BEGIN
            NoSeriesMgmt.SetSeries(TransRec."Line No.");
            Rec := TransRec;
            EXIT(TRUE);
        END;
    end; */



    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    var
        Edu: Record "Education Setup";
        NoSeriesMgmt: Codeunit NoSeriesManagement;
}