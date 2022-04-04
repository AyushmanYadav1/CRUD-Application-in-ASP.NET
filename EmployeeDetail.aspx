<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetail.aspx.cs" Inherits="TableView.EmployeeDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/additional-methods.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
        media="screen" />
    <title></title>


    <style type="text/css">
        .avatar {
            vertical-align: middle;
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }

        .style1 {
            width: 50%;
            margin-left: 20px;
        }

        .auto-style1 {
            height: 39px;
        }

        .auto-style2 {
            width: 343px;
        }

        .auto-style3 {
            height: 39px;
            width: 343px;
        }

        .auto-style4 {
            background-color: #99CCFF;
        }

        .auto-style5 {
            margin-left: 311px;
        }

        #dvPreview {
            min-height: 400px;
            min-width: 400px;
            display: none;
        }
        
    </style>
    
    <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ShowImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=ImgPrv.ClientID%>').prop('src', e.target.result)
                        .width(100)
                        .height(150);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</head>
<body>

    <h3 class="style1">All Information of selected Employee:</h3>
    <br />
    <form id="form1" runat="server">
        <div class="style1">
            <table class="table table-striped">

                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style3">ID:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TXTID" runat="server" MaxLength="30" CssClass="auto-style4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Date Of Joining:</td>
                    <td>
                        <asp:TextBox ID="txtDOJ" runat="server" MaxLength="25" CssClass="auto-style4"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Job Title:</td>
                    <td>
                        <asp:TextBox ID="txtJobTitle" runat="server" MaxLength="25" CssClass="auto-style4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Employee Type:</td>
                    <td>
                        <asp:TextBox ID="txtET" runat="server" MaxLength="20" CssClass="auto-style4"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <a href="EmployeeForm.aspx">Go Back</a>
        </div>
        <br />
        <%--<input id="fileupload" type="file" />
            <br />
            <div id="dvPreview">
            </div>
            <button type="button" class="btn btn-primary" onclick="UploadBtn_Click">
                Upload File
            </button>--%>

        <br />
        <div>
            <fieldset style="width: 300px;">
                <legend>Profile</legend>
                <div style="text-align: center;">
                    <asp:Image ID="ImgPrv" Height="150px" box-shadow="0 4px 8px 0 rgba(0, 0, 0, 0.2)" Width="100px" runat="server" /><br />
                    <asp:FileUpload ID="flupImage" runat="server" onchange="ShowImagePreview(this);" />
                    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="UploadBtn_Click" />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                </div>
            </fieldset>
        </div>

    </form>
</body>
</html>
