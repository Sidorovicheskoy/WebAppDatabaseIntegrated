<%@ Page Title="edytuj projekt" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="edytuj_projekt.aspx.cs" Inherits="APLIKACJA2.edytuj_projekt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" DeleteCommand="DELETE FROM [PROJEKT] WHERE [ID_PROJEKT] = @ID_PROJEKT" InsertCommand="INSERT INTO [PROJEKT] ([ID_RODZAJ], [ID_STATUS], [NR_PROJEKT], [TEMAT_PROJEKT], [DATA_ROZPOCZECIA], [DATA_ZAKONCZENIA], [KWOTA], [UWAGA]) VALUES (@ID_RODZAJ, @ID_STATUS, @NR_PROJEKT, @TEMAT_PROJEKT, @DATA_ROZPOCZECIA, @DATA_ZAKONCZENIA, @KWOTA, @UWAGA)" SelectCommand="SELECT PROJEKT.ID_PROJEKT, PROJEKT.ID_RODZAJ, RODZAJ.NAZWA_RODZAJ, PROJEKT.ID_STATUS, STATUS.NAZWA_STATUS, PROJEKT.NR_PROJEKT, PROJEKT.TEMAT_PROJEKT, PROJEKT.DATA_ROZPOCZECIA, PROJEKT.DATA_ZAKONCZENIA, PROJEKT.KWOTA, PROJEKT.UWAGA FROM PROJEKT INNER JOIN RODZAJ ON PROJEKT.ID_RODZAJ = RODZAJ.ID_RODZAJ INNER JOIN STATUS ON PROJEKT.ID_STATUS = STATUS.ID_STATUS" UpdateCommand="UPDATE [PROJEKT] SET [ID_RODZAJ] = @ID_RODZAJ, [ID_STATUS] = @ID_STATUS, [NR_PROJEKT] = @NR_PROJEKT, [TEMAT_PROJEKT] = @TEMAT_PROJEKT, [DATA_ROZPOCZECIA] = @DATA_ROZPOCZECIA, [DATA_ZAKONCZENIA] = @DATA_ZAKONCZENIA, [KWOTA] = @KWOTA, [UWAGA] = @UWAGA WHERE [ID_PROJEKT] = @ID_PROJEKT">
            <DeleteParameters>
                <asp:Parameter Name="ID_PROJEKT" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_RODZAJ" Type="Int32" />
                <asp:Parameter Name="ID_STATUS" Type="Int32" />
                <asp:Parameter Name="NR_PROJEKT" Type="String" />
                <asp:Parameter Name="TEMAT_PROJEKT" Type="String" />
                <asp:Parameter Name="DATA_ROZPOCZECIA" Type="DateTime" />
                <asp:Parameter Name="DATA_ZAKONCZENIA" Type="DateTime" />
                <asp:Parameter Name="KWOTA" Type="Decimal" />
                <asp:Parameter Name="UWAGA" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_RODZAJ" Type="Int32" />
                <asp:Parameter Name="ID_STATUS" Type="Int32" />
                <asp:Parameter Name="NR_PROJEKT" Type="String" />
                <asp:Parameter Name="TEMAT_PROJEKT" Type="String" />
                <asp:Parameter Name="DATA_ROZPOCZECIA" Type="DateTime" />
                <asp:Parameter Name="DATA_ZAKONCZENIA" Type="DateTime" />
                <asp:Parameter Name="KWOTA" Type="Decimal" />
                <asp:Parameter Name="UWAGA" Type="String" />
                <asp:Parameter Name="ID_PROJEKT" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" SelectCommand="SELECT * FROM [RODZAJ]

WHERE NAZWA_RODZAJ &lt;&gt; '-wybierz rodzaj-'

ORDER BY [NAZWA_RODZAJ]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_PROJEKT" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_PROJEKT" HeaderText="ID_PROJEKT" InsertVisible="False" ReadOnly="True" SortExpression="ID_PROJEKT" Visible="False" />
                <asp:BoundField DataField="ID_RODZAJ" HeaderText="ID_RODZAJ" SortExpression="ID_RODZAJ" Visible="False" />
                <asp:BoundField DataField="NAZWA_RODZAJ" HeaderText="NAZWA_RODZAJ" SortExpression="NAZWA_RODZAJ" Visible="False" />
                <asp:TemplateField HeaderText="rodzaj projektu">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NAZWA_RODZAJ" DataValueField="ID_RODZAJ" SelectedValue='<%# Bind("ID_RODZAJ") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("NAZWA_RODZAJ") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ID_STATUS" HeaderText="ID_STATUS" SortExpression="ID_STATUS" />
                <asp:BoundField DataField="NAZWA_STATUS" HeaderText="NAZWA_STATUS" SortExpression="NAZWA_STATUS" />
                <asp:BoundField DataField="NR_PROJEKT" HeaderText="NR_PROJEKT" SortExpression="NR_PROJEKT" />
                <asp:BoundField DataField="TEMAT_PROJEKT" HeaderText="TEMAT_PROJEKT" SortExpression="TEMAT_PROJEKT" />
                <asp:BoundField DataField="DATA_ROZPOCZECIA" HeaderText="DATA_ROZPOCZECIA" SortExpression="DATA_ROZPOCZECIA" />
                <asp:BoundField DataField="DATA_ZAKONCZENIA" HeaderText="DATA_ZAKONCZENIA" SortExpression="DATA_ZAKONCZENIA" />
                <asp:BoundField DataField="KWOTA" HeaderText="KWOTA" SortExpression="KWOTA" />
                <asp:BoundField DataField="UWAGA" HeaderText="UWAGA" SortExpression="UWAGA" />
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
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>
