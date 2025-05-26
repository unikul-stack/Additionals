pageextension 50104 DiscountPageExt extends "Discount/Scholarship"
{
    //megha 1-4-2025
    layout
    {
        addafter("Display Discount")
        {
            field(Remarks; Rec.Remarks)
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