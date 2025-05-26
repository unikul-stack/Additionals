tableextension 50112 EmployeeTableExt extends Employee
{
    fields
    {
        field(50010; "Password Changed Date"; Date)
        {

        }
        field(50050; "Password Changed"; Boolean)
        {

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