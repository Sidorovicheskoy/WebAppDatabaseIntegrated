<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="wyszukaj_projekt_temat.aspx.cs" Inherits="APLIKACJA2.wyszukaj_projekt_temat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" SelectCommand="SELECT ID_PROJEKT, TEMAT_PROJEKT FROM PROJEKT WHERE (TEMAT_PROJEKT LIKE '%' + @TEMAT_PROJEKT + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="TEMAT_PROJEKT" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    <p>
        temat projektu:<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Wyszukaj" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        aby uzyskac szczegoly klinij Wybierz a nastepnie kliknij
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/projekt_szczegoly_temat.aspx">tutaj</asp:HyperLink>
    </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_PROJEKT" DataSourceID="SqlDataSource1" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="TEMAT_PROJEKT" HeaderText="temat projektu" SortExpression="NR_PROJEKT" />
                <asp:BoundField DataField="ID_PROJEKT" HeaderText="identyfikator" InsertVisible="False" ReadOnly="True" SortExpression="ID_PROJEKT" />
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
    </asp:Content>
