<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="DetailCourses.aspx.cs" Inherits="ELEARNING.DetailCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Course</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Course</li>
                </ol>
            </nav>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-header" style="height:80px">

                            <div class="row">
                                <div class="col-xl-8">

                                    <div class="card-title">
                                        <h5><b>Course : Dasar Komputer</b></h5>
                                    </div>
                                </div>
                                <div class="col-xl-4">

                                    <div class="card-title">
                                        <h5><b>Level of Knowledge : Pemula</b></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <!-- Bordered Tabs -->
                            <div class="tab-content pt-2">

                                <!-- Default Accordion -->
                                <div class="accordion" id="accordionExample">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingOne">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                Modul 1: Konsep Algoritma
                                            </button>
                                        </h2>


                                        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <div class="row">
                                                    <div class="col-md-1">
                                                        <div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div>
                                                            <ul class="list-group list-group-flush">
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" id="chk1" type="checkbox" value="" aria-label="..." checked disabled>
                                                                    <a href="CourseOutline.aspx" style="color: black;">[Outline mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="SampleQuestion.aspx" style="color: black">[Contoh soal sebelum materi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="SourceVideo.aspx" style="color: black">[Video mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="SumOfModul.aspx" style="color: black">[Summary mengenai Tipe & Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Quiz.aspx" style="color: black" data-bs-toggle="modal" data-bs-target="#modal_Quiz">[Quiz Tipe & Ekspresi]</a>
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
                                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                                    <a href="Quiz.aspx" type="button" class="btn btn-primary">Yes</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 align-items-center">
                                                        <div class="align-items-center">
                                                            <a href="OtherResource.aspx" type="button" class="btn btn-primary">Other Resources</a>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingTwo">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                Modul 2: Tipe dan Ekspresi
                                            </button>
                                        </h2>
                                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <div class="row">
                                                    <div class="col-md-1">
                                                        <div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div>
                                                            <ul class="list-group list-group-flush">
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" id="chk1" type="checkbox" value="" aria-label="..." checked>
                                                                    <a href="CourseOutline.aspx" style="color: black;">[Outline mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Contoh soal sebelum materi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="SourceVideo.aspx" style="color: black">[Video mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Summary mengenai Tipe & Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Quiz.aspx" style="color: black" data-bs-toggle="modal" data-bs-target="#modal_Quiz">[Quiz Tipe & Ekspresi]</a>
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
                                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                                    <a href="Quiz.aspx" type="button" class="btn btn-primary">Yes</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 align-items-center">
                                                        <div class="align-items-center">
                                                            <a href="OtherResource.aspx" type="button" class="btn btn-primary">Other Resources</a>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingThree">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                Modul 3: Stuktur Teks Algoritma
                                            </button>
                                        </h2>
                                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <div class="row">
                                                    <div class="col-md-1">
                                                        <div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div>
                                                            <ul class="list-group list-group-flush">
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" id="chk1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="CourseOutline.aspx" style="color: black;">[Outline mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Contoh soal sebelum materi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="SourceVideo.aspx" style="color: black">[Video mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Summary mengenai Tipe & Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Quiz.aspx" style="color: black" data-bs-toggle="modal" data-bs-target="#modal_Quiz">[Quiz Tipe & Ekspresi]</a>
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
                                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                                    <a href="Quiz.aspx" type="button" class="btn btn-primary">Yes</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 align-items-center">
                                                        <div class="align-items-center">
                                                            <button type="button" class="btn btn-primary">Other Resources</button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingFour">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                                                Modul 4: Pendahuluan Bahasa C
                                            </button>
                                        </h2>
                                        <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <div class="row">
                                                    <div class="col-md-1">
                                                        <div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div>
                                                            <ul class="list-group list-group-flush">
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" id="chk1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="CourseOutline.aspx" style="color: black;">[Outline mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Contoh soal sebelum materi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="SourceVideo.aspx" style="color: black">[Video mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Summary mengenai Tipe & Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Quiz.aspx" style="color: black" data-bs-toggle="modal" data-bs-target="#modal_Quiz">[Quiz Tipe & Ekspresi]</a>
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
                                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                                    <a href="Quiz.aspx" type="button" class="btn btn-primary">Yes</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 align-items-center">
                                                        <div class="align-items-center">
                                                            <button type="button" class="btn btn-primary">Other Resources</button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingFive">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                                                Modul 5: Translasi Algoritma ke Bahasa C
                                            </button>
                                        </h2>
                                        <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <div class="row">
                                                    <div class="col-md-1">
                                                        <div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div>
                                                            <ul class="list-group list-group-flush">
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" id="chk1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="CourseOutline.aspx" style="color: black;">[Outline mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Contoh soal sebelum materi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="SourceVideo.aspx" style="color: black">[Video mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Summary mengenai Tipe & Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Quiz.aspx" style="color: black" data-bs-toggle="modal" data-bs-target="#modal_Quiz">[Quiz Tipe & Ekspresi]</a>
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
                                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                                    <a href="Quiz.aspx" type="button" class="btn btn-primary">Yes</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 align-items-center">
                                                        <div class="align-items-center">
                                                            <button type="button" class="btn btn-primary">Other Resources</button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingSix">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseThree">
                                                Modul 6: Sequence
                                            </button>
                                        </h2>
                                        <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <div class="row">
                                                    <div class="col-md-1">
                                                        <div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div>
                                                            <ul class="list-group list-group-flush">
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" id="chk1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="CourseOutline.aspx" style="color: black;">[Outline mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Contoh soal sebelum materi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="SourceVideo.aspx" style="color: black">[Video mengenai Tipe dan Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Dashboard.aspx" style="color: black">[Summary mengenai Tipe & Ekspresi]</a>
                                                                </li>
                                                                <li class="list-group-item">
                                                                    <input class="form-check-input me-1" type="checkbox" value="" aria-label="..." disabled>
                                                                    <a href="Quiz.aspx" style="color: black" data-bs-toggle="modal" data-bs-target="#modal_Quiz">[Quiz Tipe & Ekspresi]</a>
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
                                                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                                    <a href="Quiz.aspx" type="button" class="btn btn-primary">Yes</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 align-items-center">
                                                        <div class="align-items-center">
                                                            <button type="button" class="btn btn-primary">Other Resources</button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Default Accordion Example -->

                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-md-5 align-items-center">
                                            <div class="align-items-center">
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_CompetenceTest">Competence Test</button>
                                                <div class="modal fade" id="modal_CompetenceTest" tabindex="-1">
                                                    <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">Confirmation</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                Number of attempts allowed: 1
                                                                <br />
                                                                You are about to start a new attempt. Do you wish to proceed?
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                <a href="CompetenceTest.aspx" type="button" class="btn btn-primary">Yes</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5 align-items-center">
                                            <div class="align-items-center">
                                                <a href="CompetenceTestResult.aspx" class="btn btn-outline-warning">Competence Test Result</a>
                                            </div>
                                        </div>
                                        <div class="col-md-2 align-items-center">
                                            <div class="align-items-center">
                                                <a href="LearningHistory.aspx" type="button" class="btn btn-outline-primary">Learning History</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <!-- End Bordered Tabs -->

                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->
</asp:Content>
