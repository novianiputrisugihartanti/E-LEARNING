<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="CompetenceTestResult.aspx.cs" Inherits="ELEARNING.CompetenceTestResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Competence Test Result</h1>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <!-- Card with header and footer -->
                    <div class="card">
                        <div class="card-header">
                            <b>Your Score: 100</b><br />
                            You <b>ALREADY HAVE ALLOWED</b> to continue to next module.
                        </div>
                        <div class="card-body">
                            <h3 class="card-title"><b>Summary and Recommendations</b></h3>
                            <h6 class="card-title">What you know: </h6>
                            <!-- List group with active and disabled items -->
                            <ol class="list-group list-group-numbered">
                                <li class="list-group-item">Tipe dan Ekspresi</li>
                                <li class="list-group-item">Pendahuluan Bahasa C</li>
                                <li class="list-group-item">Sequence</li>
                            </ol>
                            <!-- End Clean list group -->
                            <br />
                            <h6 class="card-title">What you should review: </h6>
                            <ol class="list-group list-group-numbered">
                                <li class="list-group-item d-flex justify-content-between align-items-start">
                                    <div class="ms-2 me-auto">
                                        <div class="fw-bold">Konsep Algoritma</div>
                                        You should learn:
                                    <a href="CourseOutline.aspx" class="btn btn-link">Summary mengenai konsep algoritma</a>
                                    </div>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-start">
                                    <div class="ms-2 me-auto">
                                        <div class="fw-bold">Struktur Teks Algoritma</div>
                                        You should learn:
                                    <a href="SumOfModul.aspx" type="button" class="btn btn-link">Summary mengenai struktur teks algoritma</a>
                                    </div>
                                </li>
                            </ol>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-xl-9 align-items-center">
                                    <div class="align-items-center">
                                        <a href="CompetenceTest.aspx" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#modal_Retake_Competence_Test">Re-take Competence Test</a>
                                        <div class="modal fade" id="modal_Retake_Competence_Test" tabindex="-1">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Re-Take Competence Test Confirmation</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    Number of attempts allowed: 1
                                                                <br />
                                                    You are about to re-take a new attempt. Do you wish to proceed?
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                                                    <a href="CompetenceTest.aspx" type="button" class="btn btn-primary">Yes</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 align-items-center">
                                    <div class="align-items-center">
                                        <a href="DetailCourses.aspx" class="btn btn-primary">Continue to the next module</a>
                                        
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
    <!-- End #main -->
</asp:Content>
