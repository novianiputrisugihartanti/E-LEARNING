<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="SourceVideo.aspx.cs" Inherits="ELEARNING.SourceVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Course</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="DetailCourses.aspx">Course</a></li>
                    <li class="breadcrumb-item">Video Pembelajaran Tipe & Ekspresi</li>
                </ol>
            </nav>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Video Pembelajaran Tipe & Ekspresi</h5>
                            <iframe width="1110" height="500" src="https://www.youtube.com/embed/DZ27McvrhXI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                 <div class="col-xl-5">
                                    <a href="SampleQuestion.aspx" type="button" class="btn btn-primary">Back</a>
                                </div>
                                <div class="col-xl-6">
                                    <a href="DetailCourses.aspx" type="button" class="btn btn-outline-primary">Back to Cource</a>
                                </div>
                                <div class="col-xl-1">
                                    <a href="SumOfModul.aspx" type="button" class="btn btn-primary">Next</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main>
</asp:Content>
