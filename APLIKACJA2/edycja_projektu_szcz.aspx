<%@ Page Title="edycja projektu szczegoly" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="edycja_projektu_szcz.aspx.cs" Inherits="APLIKACJA2.edycja_projektu_szcz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            height: 23px;
            width: 120px;
        }
        .auto-style1 {
            height: 23px;
            width: 1385px;
        }
        .auto-style3 {
            width: 120px;
        }
        .auto-style4 {
            width: 120px;
            height: 43px;
        }
        .auto-style5 {
            height: 43px;
            width: 1385px;
        }
        .auto-style6 {
            width: 1385px;
        }
        .auto-style7 {
            width: 120px;
            height: 26px;
        }
        .auto-style8 {
            width: 1385px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT RODZAJ.NAZWA_RODZAJ, STATUS.NAZWA_STATUS, PROJEKT.UWAGA, PROJEKT.KWOTA, PROJEKT.DATA_ZAKONCZENIA, PROJEKT.DATA_ROZPOCZECIA, PROJEKT.TEMAT_PROJEKT, PROJEKT.NR_PROJEKT, PROJEKT.ID_PROJEKT FROM PROJEKT INNER JOIN RODZAJ ON PROJEKT.ID_RODZAJ = RODZAJ.ID_RODZAJ INNER JOIN STATUS ON PROJEKT.ID_STATUS = STATUS.ID_STATUS"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" SelectCommand="SELECT * FROM [RODZAJ] ORDER BY [NAZWA_RODZAJ]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" SelectCommand="SELECT * FROM [STATUS] ORDER BY [NAZWA_STATUS]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" DeleteCommand="DELETE FROM [PROJEKT] WHERE [ID_PROJEKT] = @ID_PROJEKT" InsertCommand="INSERT INTO [PROJEKT] ([ID_RODZAJ], [ID_STATUS], [NR_PROJEKT], [TEMAT_PROJEKT], [DATA_ROZPOCZECIA], [DATA_ZAKONCZENIA], [KWOTA], [UWAGA]) VALUES (@ID_RODZAJ, @ID_STATUS, @NR_PROJEKT, @TEMAT_PROJEKT, @DATA_ROZPOCZECIA, @DATA_ZAKONCZENIA, @KWOTA, @UWAGA)" SelectCommand="SELECT * FROM [PROJEKT]" UpdateCommand="UPDATE [PROJEKT] SET [ID_RODZAJ] = @ID_RODZAJ, [ID_STATUS] = @ID_STATUS, [NR_PROJEKT] = @NR_PROJEKT, [TEMAT_PROJEKT] = @TEMAT_PROJEKT, [DATA_ROZPOCZECIA] = @DATA_ROZPOCZECIA, [DATA_ZAKONCZENIA] = @DATA_ZAKONCZENIA, [KWOTA] = @KWOTA, [UWAGA] = @UWAGA WHERE [ID_PROJEKT] = @ID_PROJEKT">
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
                <asp:ControlParameter ControlID="DDLrodzajprojektu" Name="ID_RODZAJ" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="DDLstatusprojektu" Name="ID_STATUS" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TBnrprojektu" Name="NR_PROJEKT" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TBtematprojektu" Name="TEMAT_PROJEKT" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TBdatarozpoczecia" Name="DATA_ROZPOCZECIA" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="TBdatazakonczenia" Name="DATA_ZAKONCZENIA" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="TBkwotaprojektu" Name="KWOTA" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="TBuwagi" Name="UWAGA" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ID" Name="ID_PROJEKT" PropertyName="Text" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_PROJEKT" DataSourceID="SqlDataSource1" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField SelectText="Edytuj" ShowSelectButton="True" />
                <asp:BoundField DataField="NAZWA_RODZAJ" HeaderText="Rodzaj" SortExpression="NAZWA_RODZAJ" />
                <asp:BoundField DataField="NAZWA_STATUS" HeaderText="Status" SortExpression="NAZWA_STATUS" />
                <asp:BoundField DataField="UWAGA" HeaderText="Uwagi" SortExpression="UWAGA" />
                <asp:BoundField DataField="KWOTA" HeaderText="Kwota" SortExpression="KWOTA" />
                <asp:BoundField DataField="DATA_ZAKONCZENIA" HeaderText="Data zakonczenia" SortExpression="DATA_ZAKONCZENIA" />
                <asp:BoundField DataField="DATA_ROZPOCZECIA" HeaderText="Data rozpoczecia" SortExpression="DATA_ROZPOCZECIA" />
                <asp:BoundField DataField="TEMAT_PROJEKT" HeaderText="Temat projektu" SortExpression="TEMAT_PROJEKT" />
                <asp:BoundField DataField="NR_PROJEKT" HeaderText="Numer porjektu" SortExpression="NR_PROJEKT" />
                <asp:BoundField DataField="ID_PROJEKT" HeaderText="ID projektu" InsertVisible="False" ReadOnly="True" SortExpression="ID_PROJEKT" />
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
        <table style="width:100%; margin-top: 4px;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" ForeColor="#666666" Text="Identyfikator"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="ID" runat="server" ForeColor="#666666" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="rodzaj projektu:"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DDLrodzajprojektu" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NAZWA_RODZAJ" DataValueField="ID_RODZAJ" Font-Italic="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="status projektu:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DDLstatusprojektu" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="NAZWA_STATUS" DataValueField="ID_STATUS" Font-Italic="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="nr projektu:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TBnrprojektu" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBnrprojektu" ErrorMessage="Nie wprowadzono nr projektu!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="temat projektu:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TBtematprojektu" runat="server" Height="41px" Rows="3" style="margin-bottom: 15px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBtematprojektu" ErrorMessage="Nie wprowadzono tematu projektu!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="data rozpoczecia:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TBdatarozpoczecia" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBdatarozpoczecia" ErrorMessage="Nie wprowadzono daty rozpoczecia projektu!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label7" runat="server" Text="data zakonczenia:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TBdatazakonczenia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="kwota projektu:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TBkwotaprojektu" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TBkwotaprojektu" ErrorMessage="Nie wprowadzono kwoty projektu!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Text="uwagi:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TBuwagi" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aktualizuj" />
    </p>
    <p>
    </p>
</asp:Content>
