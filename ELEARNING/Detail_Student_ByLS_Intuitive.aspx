<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Detail_Student_ByLS_Intuitive.aspx.cs" Inherits="ELEARNING.Detail_Student_ByLS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <center>
            <div class="pagetitle">
                <div class="card">
                    <div class="card-body">
                        <h1 class="pt-3">Detail Student - <span class="fw-bold text-dark">Learning Style Intuitive</span></h1>
                    </div>
                </div>


            </div>
            <!-- End Page Title -->
        </center>
        <div class="card">
            <div class="card-body pt-3">
                <table>
                    <tbody>
                        <td style="width: 10%">
                            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle" style="width: 50%; height: 50%;">
                        </td>
                        <td style="width: 20%">
                            <h6 class="fw-bold text-dark pt-2">Amelia Canin</h6>
                            <h6>0320230003</h6>
                        </td>
                        <td style="width: 20%">
                            <h6 class="pt-2">Beginner</h6>
                        </td>
                        <td style="width: 10%">
                            <h6 class="fw-bold text-dark pt-2">Stage 1</h6>
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

    </main>
</asp:Content>
