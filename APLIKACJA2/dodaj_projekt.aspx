<%@ Page Title="dodaj projekt" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dodaj_projekt.aspx.cs" Inherits="APLIKACJA2.dodaj_projekt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 120px;
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
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" DeleteCommand="DELETE FROM [PROJEKT] WHERE [ID_PROJEKT] = @ID_PROJEKT" InsertCommand="INSERT INTO [PROJEKT] ([ID_RODZAJ], [ID_STATUS], [NR_PROJEKT], [TEMAT_PROJEKT], [DATA_ROZPOCZECIA], [DATA_ZAKONCZENIA], [KWOTA], [UWAGA]) VALUES (@ID_RODZAJ, @ID_STATUS, @NR_PROJEKT, @TEMAT_PROJEKT, @DATA_ROZPOCZECIA, @DATA_ZAKONCZENIA, @KWOTA, @UWAGA)" OnSelecting="SqlDataSource3_Selecting" SelectCommand="SELECT * FROM [PROJEKT]" UpdateCommand="UPDATE [PROJEKT] SET [ID_RODZAJ] = @ID_RODZAJ, [ID_STATUS] = @ID_STATUS, [NR_PROJEKT] = @NR_PROJEKT, [TEMAT_PROJEKT] = @TEMAT_PROJEKT, [DATA_ROZPOCZECIA] = @DATA_ROZPOCZECIA, [DATA_ZAKONCZENIA] = @DATA_ZAKONCZENIA, [KWOTA] = @KWOTA, [UWAGA] = @UWAGA WHERE [ID_PROJEKT] = @ID_PROJEKT">
            <DeleteParameters>
                <asp:Parameter Name="ID_PROJEKT" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DDLrodzajprojektu" Name="ID_RODZAJ" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="DDLstatusprojektu" Name="ID_STATUS" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TBnrprojektu" Name="NR_PROJEKT" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TBtematprojektu" Name="TEMAT_PROJEKT" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TBdatarozpoczecia" Name="DATA_ROZPOCZECIA" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="TBdatazakonczenia" Name="DATA_ZAKONCZENIA" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="TBkwotaprojektu" Name="KWOTA" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="TBuwagi" Name="UWAGA" PropertyName="Text" Type="String" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT * FROM [STATUS] ORDER BY [NAZWA_STATUS]"></asp:SqlDataSource>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placzenie_projekt2_pj %>" SelectCommand="SELECT * FROM [RODZAJ] ORDER BY [NAZWA_RODZAJ]"></asp:SqlDataSource>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">rodzaj projektu:</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DDLrodzajprojektu" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NAZWA_RODZAJ" DataValueField="ID_RODZAJ" Font-Italic="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">status projektu:</td>
                <td>
                    <asp:DropDownList ID="DDLstatusprojektu" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NAZWA_STATUS" DataValueField="ID_STATUS" Font-Italic="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">nr projektu:</td>
                <td>
                    <asp:TextBox ID="TBnrprojektu" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBnrprojektu" ErrorMessage="Nie wprowadzono nr projektu!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">temat projektu:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TBtematprojektu" runat="server" Height="41px" Rows="3" style="margin-bottom: 15px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBtematprojektu" ErrorMessage="Nie wprowadzono tematu projektu!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">data rozpoczecia:</td>
                <td>
                    <asp:TextBox ID="TBdatarozpoczecia" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBdatarozpoczecia" ErrorMessage="Nie wprowadzono daty rozpoczecia projektu!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">data zakonczenia:</td>
                <td>
                    <asp:TextBox ID="TBdatazakonczenia" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">kwota projektu:</td>
                <td>
                    <asp:TextBox ID="TBkwotaprojektu" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TBkwotaprojektu" ErrorMessage="Nie wprowadzono kwoty projektu!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">uwagi:</td>
                <td>
                    <asp:TextBox ID="TBuwagi" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Zapisz projekt" />
</asp:Content>
