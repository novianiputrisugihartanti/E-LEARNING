<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Quiz_List.aspx.cs" Inherits="ELEARNING.Quiz_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main id="main" class="main">

        <div class="pagetitle">
            <h1>List of Quiz</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">List of Quiz</li>
                </ol>
            </nav>
        </div>

        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body pt-3">
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
                                                                    <img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                                                    <%--<i class="bi bi-trophy" style="color:blue;"></i>--%>
                                                                    <a href="Monitoring_Quiz.aspx" style="color:black"> [Quiz Tipe & Ekspresi]</a>
                                                                </li>
                                                            </ul>
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
                                                                      <img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                                                   <a href="Monitoring_Quiz.aspx" style="color:black"> [Quiz Tipe & Ekspresi]</a>
                                                                </li>
                                                            </ul>
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
<img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                                                <a href="Monitoring_Quiz.aspx" style="color:black"> [Quiz Tipe & Ekspresi]</a>
                                                                </li>
                                                            </ul>
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
<img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                                                  <a href="Monitoring_Quiz.aspx" style="color:black"> [Quiz Tipe & Ekspresi]</a>
                                                                </li>
                                                            </ul>
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
<img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                                                   <a href="Monitoring_Quiz.aspx" style="color:black"> [Quiz Tipe & Ekspresi]</a>
                                                                </li>
                                                            </ul>
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
<img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                                                   <a href="Monitoring_Quiz.aspx" style="color:black"> [Quiz Tipe & Ekspresi]</a>
                                                                </li>
                                                            </ul>
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
                                                <button type="button" class="btn btn-primary">Competence Test</button>
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
</asp:Content>
