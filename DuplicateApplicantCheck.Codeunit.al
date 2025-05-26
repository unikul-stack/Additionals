codeunit 50201 "Duplicate Applicant Check"
{

    trigger OnRun()
    begin
    end;


    procedure DuplicateApplicantCheck(EmailId: Text[50]; "MobileNo.": Text[20]; AdmissionYear_: Text[10]; Drive_: Code[20]; Program_: Text[30]) DuplicateAppNo: Code[20]
    var
        ApplicantsList: Record ApplicantsTbl;
    begin
        ApplicantsList.RESET;
        ApplicantsList.SETRANGE(Email, EmailId);
        ApplicantsList.SETRANGE(Mobile, "MobileNo.");
        ApplicantsList.SETRANGE(Admission_year, AdmissionYear_);
        ApplicantsList.SETRANGE(Drive, Drive_);
        ApplicantsList.SETRANGE("Program", Program_);
        IF ApplicantsList.FINDFIRST THEN
            DuplicateAppNo := ApplicantsList."No."
        ELSE
            DuplicateAppNo := '';
    end;
}

