<%@ Page Title="dodaj rodzaj" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dodaj_rodzaj.aspx.cs" Inherits="APLIKACJA2.dodaj_rodzaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" DeleteCommand="DELETE FROM [RODZAJ] WHERE [ID_RODZAJ] = @ID_RODZAJ" InsertCommand="INSERT INTO [RODZAJ] ([NAZWA_RODZAJ]) VALUES (@NAZWA_RODZAJ)" OnSelecting="SqlDataSource1_Selecting1" SelectCommand="SELECT * FROM [RODZAJ]" UpdateCommand="UPDATE [RODZAJ] SET [NAZWA_RODZAJ] = @NAZWA_RODZAJ WHERE [ID_RODZAJ] = @ID_RODZAJ">
        <DeleteParameters>
            <asp:Parameter Name="ID_RODZAJ" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="NAZWA_RODZAJ" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAZWA_RODZAJ" Type="String" />
            <asp:Parameter Name="ID_RODZAJ" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    rodzaj projektu:<asp:TextBox ID="TextBox1" runat="server" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Nie wprowadzono nazwy rodzaju projektu !!" ForeColor="Red">*</asp:RequiredFieldValidator>
</p>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
    <br />
    <br />
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zapisz" />
</p>
</asp:Content>
