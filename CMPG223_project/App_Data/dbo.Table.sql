CREATE TABLE [dbo].[Add_Expense_Table] (
    ExpenseID   INT    Primary key      NOT NULL,
    Expense_Category       NVARCHAR(MAX) NOT NULL,
    Expense_Name           NVARCHAR(MAX) NOT NULL,
    Expense_Date        DATE NOT NULL,
    Supporting_Documents    IMAGE NOT NULL,
    
    
    
);