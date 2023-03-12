<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="SampleQuestion.aspx.cs" Inherits="ELEARNING.SampleQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <main id="main" class="main">

        <div class="pagetitle">
            <h1>Course</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="DetailCourses.aspx">Course</a></li>
                    <li class="breadcrumb-item">Sample Question of Tipe & Ekspresi</li>
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
                                    <h5 class="card-title">Sample Question of Tipe & Ekspresi</h5>
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
                                    <a href="CourseOutline.aspx" type="button" class="btn btn-primary">Back</a>
                                </div>
                                <div class="col-xl-6">
                                    <a href="DetailCourses.aspx" type="button" class="btn btn-outline-primary">Back to Cource</a>
                                </div>
                                <div class="col-xl-1">
                                    <a href="SourceVideo.aspx" type="button" class="btn btn-primary">Next</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
</asp:Content>
