<%@ Page Title="dodaj status projektu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dodaj_status.aspx.cs" Inherits="APLIKACJA2.dodaj_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        Status projektu:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="nie wprowadzono statusu projektu!!" ForeColor="Red">*</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zapisz" />
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" DeleteCommand="DELETE FROM [STATUS] WHERE [ID_STATUS] = @ID_STATUS" InsertCommand="INSERT INTO [STATUS] ([NAZWA_STATUS]) VALUES (@NAZWA_STATUS)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [STATUS]" UpdateCommand="UPDATE [STATUS] SET [NAZWA_STATUS] = @NAZWA_STATUS WHERE [ID_STATUS] = @ID_STATUS">
        <DeleteParameters>
            <asp:Parameter Name="ID_STATUS" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="NAZWA_STATUS" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAZWA_STATUS" Type="String" />
            <asp:Parameter Name="ID_STATUS" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
