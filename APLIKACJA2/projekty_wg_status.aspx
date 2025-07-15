<%@ Page Title="projekty wg statusu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="projekty_wg_status.aspx.cs" Inherits="APLIKACJA2.projekty_wg_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" SelectCommand="SELECT * FROM [STATUS] ORDER BY [NAZWA_STATUS]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT RODZAJ.NAZWA_RODZAJ, STATUS.ID_STATUS, PROJEKT.DATA_ZAKONCZENIA, PROJEKT.KWOTA, PROJEKT.UWAGA, PROJEKT.DATA_ROZPOCZECIA, PROJEKT.TEMAT_PROJEKT, PROJEKT.NR_PROJEKT FROM PROJEKT INNER JOIN RODZAJ ON PROJEKT.ID_RODZAJ = RODZAJ.ID_RODZAJ INNER JOIN STATUS ON PROJEKT.ID_STATUS = STATUS.ID_STATUS WHERE (STATUS.ID_STATUS = @ID_STATUS)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ID_STATUS" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Status projektu:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NAZWA_STATUS" DataValueField="ID_STATUS">
        </asp:DropDownList>
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_STATUS" DataSourceID="SqlDataSource2" EmptyDataText="Brak projektow do wyswietlenia!" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top: 0px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="NAZWA_RODZAJ" HeaderText="NAZWA_RODZAJ" SortExpression="NAZWA_RODZAJ" />
            <asp:BoundField DataField="ID_STATUS" HeaderText="ID_STATUS" InsertVisible="False" ReadOnly="True" SortExpression="ID_STATUS" Visible="False" />
            <asp:BoundField DataField="DATA_ZAKONCZENIA" DataFormatString="{0:d}" HeaderText="DATA_ZAKONCZENIA" SortExpression="DATA_ZAKONCZENIA" />
            <asp:BoundField DataField="KWOTA" HeaderText="KWOTA" SortExpression="KWOTA" />
            <asp:BoundField DataField="UWAGA" HeaderText="UWAGA" SortExpression="UWAGA" />
            <asp:BoundField DataField="DATA_ROZPOCZECIA" DataFormatString="{0:d}" HeaderText="DATA_ROZPOCZECIA" SortExpression="DATA_ROZPOCZECIA" />
            <asp:BoundField DataField="TEMAT_PROJEKT" HeaderText="TEMAT_PROJEKT" SortExpression="TEMAT_PROJEKT" />
            <asp:BoundField DataField="NR_PROJEKT" HeaderText="NR_PROJEKT" SortExpression="NR_PROJEKT" />
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
