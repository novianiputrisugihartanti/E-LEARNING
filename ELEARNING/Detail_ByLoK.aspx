<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Detail_ByLoK.aspx.cs" Inherits="ELEARNING.Detail_ByLoK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main id="main" class="main">
        <center>
            <div class="pagetitle">
                <div class="card">
                    <div class="card-body">
                        <h1 class="pt-3">Detail Student - <span ><asp:Label runat="server" CssClass="fw-bold text-dark" ID="lblJudul"></asp:Label></span></h1>
                    </div>
                </div>

            </div>
            <!-- End Page Title -->
        </center>
        <asp:ScriptManager ID="smMain" runat="server" EnablePageMethods="true" />
      <asp:Repeater ID="repeaterLOK" runat="server" >

            <ItemTemplate>
                <div class="card">
                    <div class="card-body pt-3">
                        <table>
                            <tbody>
                                <td style="width: 10%">
                                    <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle" style="width: 50%; height: 50%;">
                                </td>
                                <td style="width: 20%">
                                    <h6><asp:Label runat="server" CssClass="fw-bold text-dark pt-2" ID="lblnama"><%# DataBinder.Eval(Container.DataItem, "nama") %></asp:Label></h6>
                                    <h6><asp:Label runat="server"  ID="lblnim"><%# DataBinder.Eval(Container.DataItem, "nim") %></asp:Label></h6>
                                </td>
                                <td style="width: 20%">
                                    <h6><asp:Label runat="server" CssClass="pt-2" ID="lblls"><%# DataBinder.Eval(Container.DataItem, "ls") %></asp:Label></h6>
                                </td>
                                <td style="width: 10%">
                                    <h6><asp:Label runat="server" CssClass="fw-bold text-dark pt-2" ID="lblstage"><%# DataBinder.Eval(Container.DataItem, "stage") %></asp:Label></h6>
                                </td>
                                <td style="width: 30%">
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">80%</div>
                                    </div>
                                </td>
                                <td style="width: 10%">
                                    <center>
                                        <a href="Detail_Single_Student.aspx" class="btn btn-link">Details</a>
                                    </center>
                                </td>
                            </tbody>
                        </table>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>



    </main>
</asp:Content>
