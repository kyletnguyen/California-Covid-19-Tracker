<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CaCovid.aspx.cs" Inherits="CaCovid.CaCovid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>California Covid-19 Tracker</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" />

    <link href="Styles/site.css" rel="stylesheet" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

    <script src="Scripts/site.js"></script>
</head>
<body class="d-flex flex-column">


    <div id="page-content">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-md-7">
                    <h1 class="font-weight-light mt-4">California Covid-19 Tracker</h1>
                    <p class="lead descr">This project is to demonstrate my understanding of programming in an enterprise.  The rows returned from the database are used to display information regarding the total number of new cases and deaths of Covid-19 reported since the previous day. </p>
                </div>

            </div>
            <form id="form1" runat="server">
                <div class="input-daterange input-group justify-content-center" id="datepicker">
                    <div class="col-xs-2">
                        <label for="startDate">Start Date</label>
                        <input id="startDate" type="text" class="dateInput input-sm form-control" name="start" runat="server" readonly="true" />
                    </div>

                    <span class="input-group-addon">to</span>
                    <div class="col-xs-2">
                        <label for="endDate">End Date</label>
                        <input id="endDate" type="text" class="dateInput input-sm form-control" name="end" runat="server" readonly="true" />
                    </div>
                </div>

                <asp:LinkButton ID="btnCovid" CssClass="btn-disabled disabled btn btn-primary" runat="server" OnClick="btnCovid_Click">Show CA Covid-19 Data <i class="fas fa-stethoscope"></i></asp:LinkButton>


                <div class="gvContainer">
                    <asp:GridView ID="gvCovid" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="COVID_DATE" HeaderText="Date" SortExpression="COVID_DATE" />
                            <asp:BoundField DataField="NEW_CASES" HeaderText="New Cases" SortExpression="NEW_CASES" />
                            <asp:BoundField DataField="DEATHS" HeaderText="Deaths" SortExpression="DEATHS" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                </div>
            </form>
      
            <div class="disclaimer alert alert-danger" role="alert">
                **  DISCLAIMER This is <b>not</b> an accurate representation of the data for Covid-19.  These numbers were created for educational purposes.  Please visit the <a href="https://www.cdph.ca.gov/Programs/CID/DCDC/Pages/Immunization/ncov2019.aspx" target="_blank" class="alert-link" title="California Department of Public Health COVID-19">CDPH's website</a> for an accurate results.  **
            </div>
        </div>
    </div>

    <footer id="sticky-footer" class="footer py-4 bg-dark text-white-50">
        <div class="container text-center">
            <small>Kyle Nguyen
                <br />
                Copyright &copy; 2020</small>
        </div>
    </footer>
</body>
</html>
