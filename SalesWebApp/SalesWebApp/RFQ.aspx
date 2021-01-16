<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RFQ.aspx.cs" Inherits="SalesWebApp.RFQ" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
    <script type="text/javascript">
        function updateFields() {
            var value = $("#MainContent_TxtOrdCust_Search").val();
            //Order Column
            $("#MainContent_TxtOrdCust_Name").val(value);
            $("#MainContent_TxtOrdCust_Addr1").val(value);
            $("#MainContent_TxtOrdCust_Addr2").val(value);
            $("#MainContent_TxtOrdCust_Addr3").val(value);

            //Invoice Column
            $("#MainContent_TxtInvCust_Search").val(value);
            $("#MainContent_TxtInvCust_Name").val(value);
            $("#MainContent_TxtInvCust_Addr1").val(value);
            $("#MainContent_TxtInvCust_Addr2").val(value);
            $("#MainContent_TxtInvCust_Addr3").val(value);

            //Delivery Column
            $("#MainContent_TxtDelivCust_Search").val(value);
            $("#MainContent_TxtDelivCust_Name").val(value);
            $("#MainContent_TxtDelivCust_Addr1").val(value);
            $("#MainContent_TxtDelivCust_Addr2").val(value);
            $("#MainContent_TxtDelivCust_Addr3").val(value);
        }
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
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "RFQ.aspx.cs/GetCompletionListRFQ",
                        data: "{'RFQno':'" + document.getElementById('MainContent_TxtRFQNumber').value + "'}",
                        dataType: "json",
                        success: function (data) {

                            response(data.d);
                        },
                        error: function (result) {
                            alert("No Match");
                        }
                    });
                }
            });
            $("#MainContent_TxtOrdCust_Search").autocomplete({
                source: RFQno,
                close: function (event, ui) { updateFields(); }
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
                    <asp:Label CssClass="cust-label" ID="Label25" Text="Project Type" runat="server" ></asp:Label>
                    <asp:DropDownList ID="DropDownRFQType" runat="server" CssClass="form-control border-radius-3">
                    </asp:DropDownList>
                </div>
            </div>
    
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label2" Text="RFQ Date" runat="server" ></asp:Label>
                    <input type="datetime-local" class="form-control" id="TxtRFQDate" runat="server" value="dd-MM-yyyy">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label3" Text="Quote By" runat="server" ></asp:Label>
                    <input type="datetime-local" class="form-control" id="TxtQuoteByDate" runat="server">
                </div>
            </div>
    
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label4" Text="Price By" runat="server" ></asp:Label>
                   
                    <input type="datetime-local" class="form-control" id="TxtPriceBy" runat="server">
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label5" Text="CS Person" runat="server" ></asp:Label>
                    <asp:DropDownList ID="Dropdown_CS_Person" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label6" Text="Procurement Person" runat="server" ></asp:Label>
                    <asp:DropDownList ID="DropDown_Procurement" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>
                </div>
            </div>
    
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label7" Text="Sales Person" runat="server" ></asp:Label>
                    <asp:DropDownList ID="DropDown_Sales" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label8" Text="Team Lead" runat="server" ></asp:Label>
                    <asp:DropDownList ID="DropDown_TeamLead" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label9" Text="Order Customer" runat="server" ></asp:Label>
                    <asp:TextBox ID="TxtOrdCust_Search" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:HiddenField ID="HF_OrderCust" runat="server" />
                    <asp:TextBox ID="TxtOrdCust_Name" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:TextBox ID="TxtOrdCust_Addr1" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:TextBox ID="TxtOrdCust_Addr2" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:TextBox ID="TxtOrdCust_Addr3" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label10" Text="Invoice Customer" runat="server" ></asp:Label>
                    <asp:TextBox ID="TxtInvCust_Search" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:HiddenField ID="HF_InvCust" runat="server" />
                    <asp:TextBox ID="TxtInvCust_Name" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:TextBox ID="TxtInvCust_Addr1" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:TextBox ID="TxtInvCust_Addr2" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:TextBox ID="TxtInvCust_Addr3" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                </div>
            </div>
        
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label11" Text="Delivery Address" runat="server" ></asp:Label>
                    <asp:TextBox ID="TxtDelivCust_Search" runat="server" CssClass="form-control margin-top-5   border-radius-3"></asp:TextBox>
                    <asp:HiddenField ID="HF_DelivCust" runat="server" />
                    <asp:TextBox ID="TxtDelivCust_Name" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:TextBox ID="TxtDelivCust_Addr1" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:TextBox ID="TxtDelivCust_Addr2" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                    <asp:TextBox ID="TxtDelivCust_Addr3" runat="server" CssClass="form-control margin-top-5 border-radius-3"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label12" Text="Contact Person" runat="server" ></asp:Label>
                    <asp:DropDownList ID="DropDownContactPerson" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>
                </div>
            </div>
    
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label13" Text="Currency" runat="server" ></asp:Label>
                    <asp:DropDownList ID="DropDownCurrency" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>
                </div>
            </div>
        
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label14" Text="Payment Term" runat="server" ></asp:Label>
                    <asp:DropDownList ID="DropDownPayTerm" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label15" Text="Contact Number" runat="server" ></asp:Label>
                    <asp:TextBox ID="TxtContactNumber" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
    
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label16" Text="Customer Reference" runat="server" ></asp:Label>
                    <asp:TextBox ID="TxtCustReference" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
        
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label17" Text="Our Reference" runat="server" ></asp:Label>
                    <asp:TextBox ID="TxtOurReference" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label18" Text="Reqd. Delivery Date" runat="server" ></asp:Label>
                    
                    <input type="datetime-local" class="form-control" id="TxtRequiredDelivDate" runat="server">
                </div>
            </div>
    
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label19" Text="Lead Time" runat="server" ></asp:Label>
                   
                    <input type="datetime-local" class="form-control" id="TxtLeadTime" runat="server">
                </div>
            </div>
        
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label20" Text="Delivery Location" runat="server" ></asp:Label>
                    <asp:DropDownList ID="DropDowDelivLocation" runat="server" CssClass="form-control border-radius-3" >

                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-7">
                <div class="form-group">
                    <asp:Label CssClass="cust-label" ID="Label21" Text="Remarks" runat="server" ></asp:Label>
                    <asp:TextBox ID="TxtRemarks" runat="server" CssClass="form-control border-radius-3 responsive-width" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>

            <div class="col-md-1 padding-top-23"></div>

            <div class="col-md-2 padding-top-23 ">
                <div class="form-group">                    
                   <asp:Button ID="BtnSave" runat="server" CssClass="form-control border-radius-3 btn btn-primary" Text="Save" />
                </div>
            </div>

        </div>

        <br />

        <div class="row">
    
            <ajaxToolkit:Accordion ID="Accordion1" runat="server" selectedindex="-1" CssClass="accordion-cust" transitionduration="250" autosize="None" requireopenedpane="false">
                <Panes>
                    <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server"  ContentCssClass="no-scroll">
                        <header><h4 onclick="ScrollDown(150)" class="padding-left-10"><i class="fa fa-plus"></i> Line Items </h4></header>
                        <content>
                            <br />
                            <div class="padding-left-30">
                                <div class="row">
                                    <button ID="Button2" class="btn btn-xl btn-primary" runat="server">Import Line Items</button>
                                </div>
                                <div class="pop-up">
                                    <div class="row padding-left-10">
                                        <div class="col-md-10">
                                            <h4><b>Import Line Items</b></h4>
                                        </div>
                                        <div class="col-md-1">
                                            <button class="btn btn-s bg-red form-control margin-top-5"><i class="fa fa-close"></i></button>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row padding-left-30">
                                        
                                        <div class="col-md-6">
                                            <h5>Download Template</h5>
                                        </div>
                                        <div class="col-md-4 margin-top-5">
                                            <button ID="btn_ExcelDownload" class="btn bg-green" runat="server"><i class="fa fa-file-excel-o fa-2x   " aria-hidden="true"></i></button>
                                        </div>
                                    </div>
                                    <div class="row padding-left-30">
                                        <div class="col-md-4">
                                            <h5>Import Items</h5>
                                        </div>
                                    </div>
                                    <div class="row padding-left-30">
                                        
                                        <div class="col-md-7 ">
                                            <label>
                                                <span id="upload-btn" class="btn btn-primary" >Choose file..</span>
                                                <asp:FileUpload ID="fileupload_excel" runat="server" CssClass="file-upload" onchange="fileUpload(this)"/>
                                            </label>                                        
                                        </div>                           
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <button class="btn btn-primary border-radius-3 form-control margin-top-5">Upload</button>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="row">
                                    <div class="col-md-11">
                                        <div class="form-group">
                                            <asp:Label CssClass="cust-label" ID="Label22" Text="Description" runat="server" ></asp:Label>
                                            <asp:TextBox ID="TxtLineDescription" runat="server" CssClass="form-control border-radius-3 responsive-width" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label CssClass="cust-label" ID="Label23" Text="RFQ Quantity" runat="server" ></asp:Label>
                                            <asp:TextBox ID="TxtQty" runat="server" CssClass="form-control border-radius-3"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:Label CssClass="cust-label" ID="Label24" Text="UOM" runat="server" ></asp:Label>
                                            <asp:DropDownList ID="DropDownUOM" runat="server" CssClass="form-control border-radius-3"> </asp:DropDownList>

                                        </div>
                                    </div>
                                    <div class="col-md-1 padding-top-23">
                                        <div class="form-group">
                                            <Button ID="Btn_AddLines" runat="server" class="form-control border-radius-3 btn btn-primary" ><i class="fa fa-plus"></i></Button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 padding-top-23 padding-left-0">
                                        <asp:GridView ID="GridViewLineItems" runat="server" CssClass="table table-bordered table-responsive text-center " AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField DataField="slno" ItemStyle-CssClass="sn-cell " HeaderText="Line Item" />
                                                <asp:BoundField DataField="itemcode" ItemStyle-CssClass="number-cell" HeaderText="Code" />
                                                <asp:BoundField DataField="description" ItemStyle-CssClass="desc-cell" HeaderText="Description" />
                                                <asp:BoundField DataField="quantity" ItemStyle-CssClass="number-cell" HeaderText="Quantiy" />
                                                <asp:BoundField DataField="unit_code" ItemStyle-CssClass="number-cell" HeaderText="UnitCode" />
                                                <asp:BoundField DataField="unit" ItemStyle-CssClass="number-cell" HeaderText="Unit" />
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <Button ID="Btn_Edit" runat="server" Class="form-control border-radius-3 btn-primary radio-cell" > <i class="fa fa-edit"></i></Button>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <Button ID="Btn_Delete" runat="server" Class="form-control border-radius-3 bg-red radio-cell" ><i class="fa fa-trash" aria-hidden="true"></i></Button>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <Button ID="Btn_Insert" runat="server" Class="form-control border-radius-3 bg-green radio-cell"  ><i class="fa fa-plus" aria-hidden="true"></i></Button>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>                        
                        </content>
                    </ajaxToolkit:AccordionPane>
                </Panes>
            </ajaxToolkit:Accordion>
        </div>
    </div>   
    <br />
    <script>
       function fileUpload(e) {
           var fu1 = document.getElementById("<%= fileupload_excel.ClientID %>");
           console.log(fu1.value.split("\\").pop());
            if (fu1.value.split("\\").pop() != "") {
               document.getElementById('upload-btn').innerHTML = fu1.value.split("\\").pop();
           }
           else {
            document.getElementById('upload-btn').innerHTML = "Choose File...";
        }

        }

        function ScrollDown(x) {

            setTimeout(() => { window.scrollBy(0, 1000); }, 280);
        }
    </script>
</asp:Content>
