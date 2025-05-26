codeunit 50100 UpdateUserAuthPassword
{
    procedure UpdateUserAuthenticationPassword(UserName: Code[20]; Password: Text[30]);

    var
        UserAuthentication: Record "User Authentication";
        Emp: Record Employee;
    begin
        if UserAuthentication.Get(UserName) then begin
            UserAuthentication.Password := Password;
            UserAuthentication.Modify();
        end else
            Error('User with No. %1 not found.', UserAuthentication);
    end;

    procedure UpdateEmpPassword("No.": Code[20])
    var
        EmployeeRec: Record Employee;
    begin
        if EmployeeRec.Get("No.") then begin
            EmployeeRec."Password Changed Date" := WorkDate();
            EmployeeRec."Password Changed" := true;
            EmployeeRec.Modify();
        end else
            Error('Employee with No. %1 not found.', "No.");
    end;
}