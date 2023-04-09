<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ELEARNING.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
                        <!-- End Logo -->
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4">Login</h5>
                                    <p class="text-center small">Enter your username & password to login</p>
                                </div>
                                <form class="row g-3 needs-validation" novalidate>
                                    <div class="col-12">
                                        <label for="yourUsername" class="form-label">Username</label>
                                        <div class="input-group has-validation">
                                            <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" placeholder="username" ClientIDMode="Static"></asp:TextBox>
                                            <%--                                            <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="txtUsername" ValidationGroup="loginform" CssClass="invalid-feedback" ErrorMessage="Please enter your username."   
ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label for="yourPassword" class="form-label">Password</label>
                                        <input type="password" name="password" class="form-control" id="yourPassword" required>
                                        <div class="invalid-feedback">Please enter your password!</div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                                            <label class="form-check-label" for="rememberMe">Remember me</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <asp:Button ID="btnSignIn" CssClass="btn btn-primary w-100" runat="server" Text="Login" OnClientClick="return (getValue())" OnClick="btnSignIn_Click"></asp:Button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
    
<asp:ScriptManager ID="smMain" runat="server" EnablePageMethods="true" />
    <script>
        function getValue() {
            var usernameUser = document.getElementById('txtUsername').value;

            if (usernameUser == "") {
                $.ajax({
                    type: "POST",
                    url: "WebMethodCall.aspx/GetData",
                    data: '',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        alert(response.d);
                    },
                });
            } else if (usernameUser != "") {
                //var pass = document.getElementById('txtPassword').value;
                var pass = " ";
                $.support.cors = true;
                $.ajax({
                    url: "https://api.polytechnic.astra.ac.id:2906/api_dev/AccessToken/Get",
                    type: "POST",
                    contenttype: "application/x-www-form-urlencoded",

                    // parameter
                    data: { username: usernameUser, password: pass, grant_type: 'password' },
                    success: function (data) {
                        var url1 = "https://api.polytechnic.astra.ac.id:2906/api_dev/efcc359990d14328fda74beb65088ef9660ca17e/SIA/LoginSIA?username="
                            + usernameUser + "&password=" + pass;
                        $.ajax({
                            url: url1,
                            type: "POST",
                            headers: {
                                'Authorization': 'Bearer ' + data["access_token"]
                            },
                            contentType: 'application/json',
                            // data: { username: usernameUser, password: pass },
                            success: function (result) {
                                if (result["nama"] == "") {
                                    alert("Username Salah")
                                    function successalert() {
                                        Swal.fire({
                                            icon: 'error',
                                            title: 'Gagal Login',
                                            text: 'Username atau Password Salah!'
                                        })
                                    }

                                } else {
                                    if (result["role"] == "KARYAWAN") {
                                        //get data session for all key
                                        var args = {
                                            id: "id1", username: result["username"], role: result["role"], npk: result["npk"], nama: result["nama"], email: result["email"]
                                        }

                                        $.ajax({
                                            type: "POST",
                                            url: "Login.aspx/SetSessionValue",
                                            data: JSON.stringify(args),
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function () {
                                                Swal.fire({
                                                    icon: 'success',
                                                    title: 'Berhasil Login',
                                                    text: 'Selamat Datang!'
                                                })
                                            },
                                            error: function () {
                                                alert("Fail");
                                            }
                                        });
                                        window.location.href = ("Dashboard_Dosen.aspx");
                                    } else {
                                        //get data session for all key
                                        var args = {
                                            id: "id1", username: result["username"], role: result["role"], npk: result["npk"], nama: result["nama"], email: result["email"]
                                        }

                                        $.ajax({
                                            type: "POST",
                                            url: "Login.aspx/SetSessionValue",
                                            data: JSON.stringify(args),
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function () {
                                                Swal.fire({
                                                    icon: 'success',
                                                    title: 'Berhasil Login',
                                                    text: 'Selamat Datang!'
                                                })
                                            },
                                            error: function () {
                                                alert("Fail");
                                            }
                                        });
                                        //ClientScript.RegisterClientScriptBlock(this.GetType(), "Kirim", "Swal.fire('Berhasil!','Berhasil Login.','success')", true);
                                        window.location.href = ("Dashboard.aspx");
                                    }
                                }
                            },

                            error: function (error) {
                                //alert("Username Salah");
                                /*MessageBox.Show("Username Salah");*/
                                function successalert() {
                                    Swal.fire({
                                        icon: 'error',
                                        title: 'Gagal Login',
                                        text: 'Username atau Password Salah!'
                                    })
                                }
                                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "Swal.fire('Error!', 'Username Salah!.', 'error')", true);

                            }
                            // contentType: 'application/json',
                            // headers: {"Authorization": "Bearer "+ data["access_token"]},

                        });
                    }
                });
            }
            return false;
        }
        //function onSuccess(result) {
        //    alert(result);
        //}

        //function onError(error) {
        //    alert("error " + error);
        //}
    </script>

</asp:Content>
