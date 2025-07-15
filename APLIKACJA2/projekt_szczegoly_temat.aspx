<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="projekt_szczegoly_temat.aspx.cs" Inherits="APLIKACJA2.projekt_szczegoly_temat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT STATUS.NAZWA_STATUS, RODZAJ.NAZWA_RODZAJ, PROJEKT.NR_PROJEKT, PROJEKT.TEMAT_PROJEKT, PROJEKT.DATA_ROZPOCZECIA, PROJEKT.DATA_ZAKONCZENIA, PROJEKT.KWOTA, PROJEKT.UWAGA, PROJEKT.ID_PROJEKT FROM STATUS INNER JOIN PROJEKT ON STATUS.ID_STATUS = PROJEKT.ID_STATUS INNER JOIN RODZAJ ON PROJEKT.ID_RODZAJ = RODZAJ.ID_RODZAJ WHERE (PROJEKT.ID_PROJEKT = @ID_POJEKT)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID_POJEKT" QueryStringField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    aby powrocic do filtracji projektow kliknij
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/wyszukaj_projekt_temat.aspx">tutaj</asp:HyperLink>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_PROJEKT" DataSourceID="SqlDataSource1" EmptyDataText="brak projektu do wyswietlenia" GridLines="Vertical" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
        <AlternatingRowStyle BackColor="Gainsboro" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="NAZWA_STATUS" HeaderText="Status" SortExpression="NAZWA_STATUS" />
            <asp:BoundField DataField="NAZWA_RODZAJ" HeaderText="Rodzaj" SortExpression="NAZWA_RODZAJ" />
            <asp:BoundField DataField="NR_PROJEKT" HeaderText="Numer" SortExpression="NR_PROJEKT" />
            <asp:BoundField DataField="TEMAT_PROJEKT" HeaderText="Temat" SortExpression="TEMAT_PROJEKT" />
            <asp:BoundField DataField="DATA_ROZPOCZECIA" DataFormatString="{0:d}" HeaderText="Data rozpoczecia" SortExpression="DATA_ROZPOCZECIA" />
            <asp:BoundField DataField="DATA_ZAKONCZENIA" DataFormatString="{0:d}" HeaderText="Data zakonczenia" SortExpression="DATA_ZAKONCZENIA" />
            <asp:BoundField DataField="KWOTA" HeaderText="Kwota" SortExpression="KWOTA" />
            <asp:BoundField DataField="UWAGA" HeaderText="Uwagi" SortExpression="UWAGA" />
            <asp:BoundField DataField="ID_PROJEKT" HeaderText="ID_PROJEKT" InsertVisible="False" ReadOnly="True" SortExpression="ID_PROJEKT" Visible="False" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
    <br />
    <br />
</asp:Content>
