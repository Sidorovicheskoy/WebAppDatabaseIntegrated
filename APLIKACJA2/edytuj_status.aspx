<%@ Page Title="edytuj status projektu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="edytuj_status.aspx.cs" Inherits="APLIKACJA2.edytuj_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_STATUS" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_STATUS" HeaderText="ID_STATUS" InsertVisible="False" ReadOnly="True" SortExpression="ID_STATUS" Visible="False" />
                <asp:BoundField DataField="NAZWA_STATUS" HeaderText="status projektu" SortExpression="NAZWA_STATUS" />
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
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" DeleteCommand="DELETE FROM [STATUS] WHERE [ID_STATUS] = @ID_STATUS" InsertCommand="INSERT INTO [STATUS] ([NAZWA_STATUS]) VALUES (@NAZWA_STATUS)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [STATUS]" UpdateCommand="UPDATE [STATUS] SET [NAZWA_STATUS] = @NAZWA_STATUS WHERE [ID_STATUS] = @ID_STATUS">
        <DeleteParameters>
            <asp:Parameter Name="ID_STATUS" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NAZWA_STATUS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAZWA_STATUS" Type="String" />
            <asp:Parameter Name="ID_STATUS" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
