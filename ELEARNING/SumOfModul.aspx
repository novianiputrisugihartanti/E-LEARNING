<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="SumOfModul.aspx.cs" Inherits="ELEARNING.SumOfModul" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Course</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="DetailCourses.aspx">Course</a></li>
                    <li class="breadcrumb-item">Summary Pembelajaran Tipe & Ekspresi</li>
                </ol>
            </nav>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-xl-11">
                                    <h5 class="card-title">Summary Pembelajaran Tipe & Ekspresi</h5>
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-4">


                            <%--<object data="/assets/file/LDOM 2023.pdf#toolbar=0" width="100%" height="500px"></object>--%>
                            <embed type="application/pdf" src="/assets/file/VivAstra - Astra Polytechnic.pdf#toolbar=0" width="100%" height="500px" />
                            <div class="row">
                                <div class="col-xl-11">
                                </div>
                                <div class="col-xl-1">
                                    <a href="/assets/file/VivAstra - Astra Polytechnic.pdf" type="button" class="btn btn-light"><i class="bi bi-arrows-fullscreen"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-xl-5">
                                    <a href="SourceVideo.aspx" type="button" class="btn btn-primary">Back</a>
                                </div>
                                <div class="col-xl-6">
                                    <a href="DetailCourses.aspx" type="button" class="btn btn-outline-primary">Back to Cource</a>
                                </div>
                                <div class="col-xl-1">
                                    <a href="Quiz.aspx" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_Quiz">Quiz</a>
                                    <div class="modal fade" id="modal_Quiz" tabindex="-1">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Quiz Confirmation</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    Number of attempts allowed: 1
                                                                <br />
                                                    You are about to start a new attempt. Do you wish to proceed?
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                                                    <a href="Quiz.aspx" type="button" class="btn btn-primary">Yes</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
</asp:Content>
