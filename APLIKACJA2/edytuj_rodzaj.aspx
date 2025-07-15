<%@ Page Title="edytuj rodzaj projektu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="edytuj_rodzaj.aspx.cs" Inherits="APLIKACJA2.edytuj_rodzaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_RODZAJ" DataSourceID="SqlDataSource1" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_RODZAJ" HeaderText="ID_RODZAJ" InsertVisible="False" ReadOnly="True" SortExpression="ID_RODZAJ" Visible="False" />
                <asp:BoundField DataField="NAZWA_RODZAJ" HeaderText="rodzaj projektu" SortExpression="NAZWA_RODZAJ" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" DeleteCommand="DELETE FROM [RODZAJ] WHERE [ID_RODZAJ] = @ID_RODZAJ" InsertCommand="INSERT INTO [RODZAJ] ([NAZWA_RODZAJ]) VALUES (@NAZWA_RODZAJ)" SelectCommand="SELECT * FROM [RODZAJ]" UpdateCommand="UPDATE [RODZAJ] SET [NAZWA_RODZAJ] = @NAZWA_RODZAJ WHERE [ID_RODZAJ] = @ID_RODZAJ">
            <DeleteParameters>
                <asp:Parameter Name="ID_RODZAJ" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NAZWA_RODZAJ" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAZWA_RODZAJ" Type="String" />
                <asp:Parameter Name="ID_RODZAJ" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
