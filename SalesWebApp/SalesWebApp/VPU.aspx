<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VPU.aspx.cs" Inherits="SalesWebApp.VPU" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <script type="text/javascript">
          $(document).ready(function () {
              SearchText();
          });
          function SearchText() {
              var RFQno = [
                  "ActionScript",
                  "AppleScript",
                  "Asp",
                  "BASIC",
                  "C",
                  "C++",
                  "Clojure",
                  "COBOL",
                  "ColdFusion",
                  "Erlang",
                  "Fortran",
                  "Groovy",
                  "Haskell",
                  "Java",
                  "JavaScript",
                  "Lisp",
                  "Perl",
                  "PHP",
                  "Python",
                  "Ruby",
                  "Scala",
                  "Scheme"
              ];
              var address
              $("#MainContent_TxtRFQNumber").autocomplete({
                  source: RFQno
              });
          }
      </script>        
    <br />
    <div class="form-horizontal">
        <div class="row">
            <div class="col-lg-10"></div>
            <div class="col-md-0">
                <div class="form-group">
                    <button class="btn form-control clr bg-red">Clear</button>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label1" Text="RFQ#" runat="server" ></asp:Label>
                    <asp:TextBox ID="TxtRFQNumber" runat="server" AutoCompleteType="Disabled" CssClass="form-control border-radius-3"></asp:TextBox>                   
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label2" Text="Supplier" runat="server"></asp:Label>
                    <asp:DropDownList ID="DropDownSupplier" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>


                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label3" Text="Currency" runat="server"></asp:Label>
                    <asp:DropDownList ID="DropDownCurrency" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>


                </div>
            </div>


        </div>
        <div class="row">
            <div class="col-md-12 padding-top-23  padding-left-0">
                <asp:GridView ID="GridViewLineItems" runat="server" CssClass="table table-bordered table-responsive text-center" AutoGenerateColumns="False" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="slno" ItemStyle-CssClass="sn-cell " HeaderText="Line #">
                            <ItemStyle CssClass="number-cell "></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="itemcode" ItemStyle-CssClass="number-cell" HeaderText="Code">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="description" ItemStyle-CssClass="desc-cell" HeaderText="Description">
                            <ItemStyle CssClass="desc-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="quantity" ItemStyle-CssClass="number-cell" HeaderText="Quantiy">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="unit" ItemStyle-CssClass="number-cell" HeaderText="Unit">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField ItemStyle-CssClass="desc-cell" HeaderText="Offered Description">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtOfferedItem" CssClass="cell-input border-radius-3"  runat="server" TextMode="MultiLine" ></asp:TextBox>
                            </ItemTemplate>
                            <ControlStyle Width="250px" />
                            <ItemStyle Width="250px" />
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-CssClass="name-cell" HeaderText="Unit Cost">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtUnitCost" type="number" CssClass="cell-input border-radius-3 -cell" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-CssClass="name-cell" HeaderText="Line Cost">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtLineTotal" type="number"  CssClass="cell-input border-radius-3 " runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
       
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label4" Text="Domestic Freight" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtDomestic" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label5" Text="Deliver To" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtDeliverTo" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label6" Text="Valid up to" runat="server"></asp:Label>
                    <input type="datetime-local" class="form-control" id="TxtValidUpto" runat="server" >

                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label7" Text="Stock Availability" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtStockAvailable" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label8" Text="Lead Time" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtLeadTime" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label9" Text="Remarks" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtRemarks" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>

                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-4 padding-left-0 padding-top-15">
                <asp:Button ID="btn_Save" CssClass="btn btn-primary form-control border-radius-3" Text="Save" runat="server" />
            </div>
        </div>
    </div>
    <br />
</asp:Content>
