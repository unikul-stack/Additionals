/*  codeunit 33065507 "AO Confirmation Check"
{
  
  trigger OnRun()
  begin

  end;

  
  
    PROCEDURE AOConfirmationCheck@1000000000(StudentNo@1000000002 : Code[20]) Output : Boolean;
    VAR
      ApplicantList@1000000000 : Record 50017;
      AcademicYearList@1000000001 : Record 50076;
    BEGIN
      ApplicantList.RESET;
      ApplicantList.SETRANGE(Student_No,StudentNo);
      IF ApplicantList.FINDFIRST THEN BEGIN
        AcademicYearList.GET(ApplicantList.Admission_year);
        IF (AcademicYearList.Closed = FALSE) AND (AcademicYearList.IsAvailable = TRUE) THEN BEGIN
          IF ApplicantList."AO Confirmed" = TRUE THEN
            Output := TRUE
          ELSE
            Output := FALSE;
        END ELSE
          Output := TRUE;
      END;
    END;

    BEGIN
    END.
  }



 */
codeunit 50202 "AO Confirmation Check"
{
    // Trigger OnRun is optional if not used
    trigger OnRun()
    begin
        // This trigger can be used for testing or initialization if needed
    end;

    /// <summary>
    /// Checks if AO confirmation is valid based on the student number.
    /// </summary>
    /// <param name="StudentNo">The student number to check.</param>
    /// <returns>True if AO confirmation is valid; otherwise, false.</returns>
    procedure AOConfirmationCheck(StudentNo: Code[20]): Boolean
    var
        ApplicantList: Record "ApplicantsTbl"; // Replace with the actual table name
        AcademicYearList: Record "Academic Year"; // Replace with the actual table name
        Output: Boolean;
    begin
        // Reset and filter the Applicants List table
        ApplicantList.Reset();
        ApplicantList.SetRange(Student_No, StudentNo);

        // Check if a matching applicant record exists
        if ApplicantList.FindFirst() then begin
            // Get the corresponding academic year record
            if AcademicYearList.Get(ApplicantList.Admission_year) then begin
                // Check if the academic year is open and available
                if (not AcademicYearList.Closed) and AcademicYearList.IsAvailable then begin
                    // Check if AO is confirmed
                    if ApplicantList."AO Confirmed" then
                        Output := true
                    else
                        Output := false;
                end else
                    Output := true; // Academic year is closed or unavailable
            end else
                Output := false; // Academic year record not found
        end else
            Output := false; // Applicant record not found

        // Return the result
        exit(Output);
    end;
}