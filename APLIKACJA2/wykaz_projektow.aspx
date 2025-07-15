<%@ Page Title="wykaz projektow" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="wykaz_projektow.aspx.cs" Inherits="APLIKACJA2.wykaz_projektow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" SelectCommand="SELECT RODZAJ.NAZWA_RODZAJ, STATUS.NAZWA_STATUS, PROJEKT.NR_PROJEKT, PROJEKT.UWAGA, PROJEKT.KWOTA, PROJEKT.DATA_ZAKONCZENIA, PROJEKT.DATA_ROZPOCZECIA, PROJEKT.TEMAT_PROJEKT FROM STATUS INNER JOIN PROJEKT ON STATUS.ID_STATUS = PROJEKT.ID_STATUS INNER JOIN RODZAJ ON PROJEKT.ID_RODZAJ = RODZAJ.ID_RODZAJ"></asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="NAZWA_RODZAJ" HeaderText="rodzaj projektu" SortExpression="NAZWA_RODZAJ" />
                <asp:BoundField DataField="NAZWA_STATUS" HeaderText="status" SortExpression="NAZWA_STATUS" />
                <asp:BoundField DataField="NR_PROJEKT" HeaderText="nr projektu" SortExpression="NR_PROJEKT" />
                <asp:BoundField DataField="UWAGA" HeaderText="uwagi" SortExpression="UWAGA" />
                <asp:BoundField DataField="KWOTA" HeaderText="kwota projektu" SortExpression="KWOTA" />
                <asp:BoundField DataField="DATA_ZAKONCZENIA" DataFormatString="{0:d}" HeaderText="data zakonczenia" SortExpression="DATA_ZAKONCZENIA" />
                <asp:BoundField DataField="DATA_ROZPOCZECIA" DataFormatString="{0:d}" HeaderText="data rozpoczecia" SortExpression="DATA_ROZPOCZECIA" />
                <asp:BoundField DataField="TEMAT_PROJEKT" HeaderText="temat projektu" SortExpression="TEMAT_PROJEKT" />
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
</asp:Content>
