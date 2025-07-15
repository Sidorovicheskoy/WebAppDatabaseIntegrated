<%@ Page Title="projekt wg rodzaju" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="projekty_wg_rodzaj.aspx.cs" Inherits="APLIKACJA2.projekty_wg_rodzaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" SelectCommand="SELECT RODZAJ.ID_RODZAJ, STATUS.NAZWA_STATUS, PROJEKT.NR_PROJEKT, PROJEKT.TEMAT_PROJEKT, PROJEKT.DATA_ROZPOCZECIA, PROJEKT.DATA_ZAKONCZENIA, PROJEKT.KWOTA, PROJEKT.UWAGA FROM PROJEKT INNER JOIN RODZAJ ON PROJEKT.ID_RODZAJ = RODZAJ.ID_RODZAJ INNER JOIN STATUS ON PROJEKT.ID_STATUS = STATUS.ID_STATUS

WHERE RODZAJ.ID_RODZAJ = @ID_RODZAJ">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="id_rodzaj" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" SelectCommand="SELECT * FROM [RODZAJ] ORDER BY [NAZWA_RODZAJ]"></asp:SqlDataSource>
    </p>
    <p>
        Rodzaj projektu:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NAZWA_RODZAJ" DataValueField="ID_RODZAJ">
        </asp:DropDownList>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_RODZAJ" DataSourceID="SqlDataSource2" EmptyDataText="Brak projektu do wyswietlenia!" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="ID_RODZAJ" HeaderText="ID_RODZAJ" InsertVisible="False" ReadOnly="True" SortExpression="ID_RODZAJ" Visible="False" />
                <asp:BoundField DataField="NAZWA_STATUS" HeaderText="Status" SortExpression="NAZWA_STATUS" />
                <asp:BoundField DataField="NR_PROJEKT" HeaderText="Nr projektu" SortExpression="NR_PROJEKT" />
                <asp:BoundField DataField="TEMAT_PROJEKT" HeaderText="Temat projektu" SortExpression="TEMAT_PROJEKT" />
                <asp:BoundField DataField="DATA_ROZPOCZECIA" DataFormatString="{0:d}" HeaderText="Data rozpoczecia" SortExpression="DATA_ROZPOCZECIA" />
                <asp:BoundField DataField="DATA_ZAKONCZENIA" DataFormatString="{0:d}" HeaderText="Data zakonczenia" SortExpression="DATA_ZAKONCZENIA" />
                <asp:BoundField DataField="KWOTA" HeaderText="Kwota projektu" SortExpression="KWOTA" />
                <asp:BoundField DataField="UWAGA" HeaderText="Uwagi" SortExpression="UWAGA" />
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
