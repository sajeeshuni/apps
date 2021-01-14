<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PM.aspx.cs" Inherits="SalesWebApp.PM" %>
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
                    <asp:Label ID="Label2" Text="Customer" runat="server"></asp:Label>
                    <asp:Label ID="Lbl_Customer" CssClass="form-control border-radius-3 max-width-280" runat="server"></asp:Label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label3" Text="Currency" runat="server"></asp:Label>
                    <asp:Label ID="Lbl_Currency" CssClass="form-control border-radius-3 max-width-100" runat="server"></asp:Label>
                    
                </div>
            </div>
        </div>
         <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label4" Text="Valid up to" runat="server"></asp:Label>
                    <input type="datetime-local" class="form-control" id="TxtValidUpto" runat="server">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label5" Text="Profit % For All Items" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtProfitPercent" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <br />
                    <Button ID="Btn_SImage" runat="server" Class="form-control border-radius-3 btn btn-primary padding-top-2" title="Single image"><img src="../fonts/image-regular.png" class="vertical-align-top" height="28" width="28"></Button>
                </div>
            </div>
             <div class="col-md-1">
                <div class="form-group">
                    <br />
                    <Button ID="Btn_MImage" runat="server" Class="form-control border-radius-3 btn btn-primary padding-top-2" title="Multiple images"><img src="../fonts/images-regular.png" class="vertical-align-top" height="28" width="28"></Button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 padding-top-23 padding-left-0">
                <asp:GridView ID="GridViewLineItems" runat="server" CssClass="table table-bordered table-responsive text-center" AutoGenerateColumns="False" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="slno" ItemStyle-CssClass="sn-cell " HeaderText="Line #">
                            <ItemStyle CssClass="number-cell "></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="itemcode" ItemStyle-CssClass="number-cell" HeaderText="Code">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="description" ItemStyle-CssClass="desc-cell" HeaderText="Description" />     
                         <asp:BoundField DataField="offered_description" ItemStyle-CssClass="desc-cell" HeaderText="Offered Description" />
                        
                        <asp:BoundField DataField="quantity" ItemStyle-CssClass="number-cell" HeaderText="Quantiy">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                         <asp:BoundField DataField="unit_code" ItemStyle-CssClass="number-cell" HeaderText="UnitCode">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="unit" ItemStyle-CssClass="number-cell" HeaderText="Unit">
                            <ItemStyle CssClass="number-cell"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="cost" ItemStyle-CssClass="number-cell" HeaderText="Cost" />
                        <asp:BoundField DataField="linecost" ItemStyle-CssClass="number-cell" HeaderText="Line Cost" />
                        <asp:TemplateField HeaderText="Profit %">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtProftPerc" type="number" ItemStyle-CssClass="name-cell cell-input" BorderStyle="None" runat="server" Width="70px" ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Profit(V)">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtPriftValue" type="number" ItemStyle-CssClass="cell-input name-cell " BorderStyle="None" runat="server" Width="70px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Line Profit">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtLineProfit" type="number" ItemStyle-CssClass="number-cell cell-input" BorderStyle="None" runat="server" Width="70px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:TextBox ID="TxtPrice" type="number" ItemStyle-CssClass="number-cell cell-input" BorderStyle="None" runat="server" Width="70px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Unit Price">
                             <ItemTemplate>
                                <asp:TextBox ID="TxtLinePrice" type="number" ItemStyle-CssClass="number-cell cell-input" BorderStyle="None" runat="server" Width="70px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>

        <div class="row">
            
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label6" Text="Logo" runat="server"></asp:Label>
                    <asp:DropDownList ID="DropDown_Logo" runat="server" CssClass="form-control border-radius-3"></asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label8" Text="Domestic Freight" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtDomesticFreight" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label9" Text="Total Freight" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtTotalFreight" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>

                </div>
            </div>
        </div>
        <div class="row">
              
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label7" Text="INCOTERM" runat="server"></asp:Label>
                    <asp:DropDownList ID="DropDown_Incoterm" runat="server" CssClass="form-control border-radius-3"></asp:DropDownList>
                 </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label10" Text="Freight" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtFreight" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">

                    <asp:Label ID="Label11" Text="Total" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtTotal" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label12" Text="Freight Profit Amount" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtFreightProfit" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label13" Text="VAT" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtVAT" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>

                </div>
            </div>
        </div>
         <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label14" Text="Discount Value, If Any" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtDiscount" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label15" Text="Grand Total" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtGrandTotal" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>

                </div>
            </div>
        </div>
         <div class="row">
            <div class="col-md-11">
                <div class="form-group">
                    <asp:Label ID="Label17" Text="Notes" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtNotes" runat="server" CssClass="form-control border-radius-3 responsive-width" ></asp:TextBox>
                </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-11">
                <div class="form-group">
                    <asp:Label ID="Label16" Text="Delivery Terms" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtDelivTerms" runat="server" CssClass="form-control border-radius-3 responsive-width"></asp:TextBox>
                </div>
            </div>
        </div>
        <br />
        
         <div class="row">
            <div class="col-md-11">
                <div class="form-group">
                    <asp:Label ID="Label18" Text="Additional Notes" runat="server"></asp:Label>
                    <asp:TextBox ID="TxtAddlNote1" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width"></asp:TextBox>
                    <asp:TextBox ID="TxtAddlNote2" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width"></asp:TextBox>
                    <asp:TextBox ID="TxtAddlNote3" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width"></asp:TextBox>
                    <asp:TextBox ID="TxtAddlNote4" runat="server" CssClass="form-control border-radius-3 margin-top-5 responsive-width"></asp:TextBox>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6">
                <asp:Button ID="BtnSave" runat="server" CssClass="form-control border-radius-3 btn btn-primary" Text="Save" />
            </div>
            <div class="col-md-2">
                <Button ID="Btn_Quote1" runat="server" Class="form-control btn border-radius-3 btn-primary padding-top-2 " Title="Quote"><i class="fa fa-file-pdf-o fa-2x"></i></button>
            </div>
            <div class="col-md-2">
                <Button ID="Btn_Quote2" runat="server" Class="form-control border-radius-3 btn btn-primary padding-top-2 " Title="Quote With Image"><i class="fa fa-file-pdf-o fa-2x"></i> <i class="fa fa-plus"></i> <i class="fa fa-image fa-2x"></i>  </button>
            </div>
            <div class="col-md-2">
                <Button ID="Btn_Quote3" runat="server" Class="form-control border-radius-3 btn btn-primary padding-top-2" Title="Quote With Multiple Image"><i class="fa fa-file-pdf-o fa-2x"></i> <i class="fa fa-plus"></i> <img src="../fonts/images-regular.png" class=" vertical-align-top" height="30" width="30"> </button>
            </div>
        </div>
    
    </div>
    <br />
</asp:Content>
