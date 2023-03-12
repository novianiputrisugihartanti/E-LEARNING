<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="DetailHistory.aspx.cs" Inherits="ELEARNING.DetailHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
           <h1>Learning History</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="LearningHistory.aspx">History</a></li>
                    <li class="breadcrumb-item">Detail History</li>
                </ol>
            </nav>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <!-- Card with header and footer -->
                    <div class="card">
                        <div class="card-header">
                            <b>Course Name: Basis Data</b>
                        </div>
                        <div class="card-body">
                            <h3 class="card-title"><b>Modul 1</b></h3>
                            <!-- List group with active and disabled items -->
                            <ol class="list-group list-group-numbered">
                                <li class="list-group-item">Outline mengenai Tipe dan Ekspresi</li>
                                <li class="list-group-item">Contoh soal sebelum materi</li>
                                <li class="list-group-item">Video mengenai Tipe dan Ekspresi</li>
                                <li class="list-group-item">Summary mengenai Tipe dan Ekspresi</li>
                                <li class="list-group-item">Quiz Tipe dan Ekspresi</li>
                            </ol>
                            <!-- End Clean list group -->
                            <br />
                            <h6 class="card-title">Quiz Score: 100 </h6>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-xl-10 align-items-center">
                                    <div class="align-items-center">
                                        <a href="LearningHistory.aspx" class="btn btn-outline-primary">Back to History</a>
                                    </div>
                                </div>
                                <div class="col-xl-2 align-items-center">
                                    <div class="align-items-center">
                                        <a href="DetailCourses.aspx" class="btn btn-primary">Go to Module</a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Card with header and footer -->
                </div>
            </div>
        </section>

    </main>
</asp:Content>
