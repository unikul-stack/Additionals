table 33065469 "Visa Applications"
{

    fields
    {
        field(1; "Visa Application No."; Code[20])
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                EducationSetup.GET();
                EducationSetup.TESTFIELD("Visa No.s");
                IF "Visa Application No." <> xRec."Visa Application No." THEN BEGIN
                    noseries.TestManual("Visa Application No.");
                    "No. Series" := '';
                END;
            end;
        }
        field(2; "Student No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Student - COLLEGE"."No.";

            trigger OnValidate()
            begin
                IF "Student No." <> '' THEN BEGIN
                    ApplicantsTbl.RESET();
                    ApplicantsTbl.SETRANGE(Student_No, "Student No.");
                    ApplicantsTbl.FINDFIRST;
                    "Student Name" := ApplicantsTbl.NameOnPassport;
                    //Rec.MODIFY();
                END;
            end;
        }
        field(3; "Student Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(4; "Visa Type"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Visa Fee Setup".Code;
        }
        field(5; "Visa File No"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Date of Application"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Visa Status"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Visa Status".Code;
        }
        field(8; "Created Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Created By"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Updated Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Updated By"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "No. Series"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(15; "App Created From"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "SLcM Portal","Admission Portal",Offline,"Mobile App";
        }
    }

    keys
    {
        key(Key1; "Visa Application No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        EducationSetup.GET();
        EducationSetup.TESTFIELD("Visa No.s");
        IF "Visa Application No." = '' THEN
            noseries.InitSeries(EducationSetup."Visa No.s", xRec."No. Series", 0D, "Visa Application No.", "No. Series");

        "Created By" := USERID;
        "Created Date" := CREATEDATETIME(WORKDATE, TIME);
        "Date of Application" := CREATEDATETIME(WORKDATE, TIME);
        "Visa Status" := 'APPLIED';
    end;

    trigger OnModify()
    begin
        "Updated By" := USERID;
        "Updated Date" := CURRENTDATETIME;
    end;

    var
        noseries: Codeunit NoSeriesManagement;
        EducationSetup: Record "Education Setup";
        ApplicantsTbl: Record ApplicantsTbl;
}

