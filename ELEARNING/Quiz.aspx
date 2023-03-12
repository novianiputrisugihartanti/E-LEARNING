<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Blank.Master" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="ELEARNING.Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <main id="main-blank" class="main">
        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-2">

                    <div class="card">
                        <div class="card-header"><b>Quiz Navigation</b></div>
                        <div class="card-body profile-card pt-4 d-flex flex-column">
                            <div>
                                <a class="btn btn-light active" href="#">1</a>
                                <a class="btn btn-light" href="#">2</a>
                                <a class="btn btn-light" href="#">3</a>
                                <a class="btn btn-light" href="#">4</a>
                            </div>
                            <br />
                            <a class="breadcrumb-item" href="SumOfAttempt.aspx">Finish attempt...</a>
                            <p>Time left <b>0:30:00</b></p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-10">

                    <div class="card bg-primary-light">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-sm-10">
                                    <b>Question 1</b>
                                </div>
                                <div class="col-sm-2">
                                    <a href="#">Flag question    <i class="bi bi-flag"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-3">
                            <p>Dibawah ini adalah operasi dasar pada file, <b>kecuali</b> : </p>
                            <div class="col-sm-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1">
                                    <label class="form-check-label" for="gridRadios1">
                                        Membuka atau mengaktifkan file
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                    <label class="form-check-label" for="gridRadios2">
                                        Membagi File
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option1">
                                    <label class="form-check-label" for="gridRadios3">
                                        Melakukan pemrosesan file
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios4" value="option1">
                                    <label class="form-check-label" for="gridRadios4">
                                        Menutup file
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card bg-primary-light">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-sm-10">
                                    <b>Question 2</b>
                                </div>
                                <div class="col-sm-2">
                                    <a href="#">Flag question    <i class="bi bi-flag"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-3">
                            <p>Open merupakan operasi dasar pada file.</p>
                            <div class="col-sm-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1">
                                    <label class="form-check-label" for="gridRadios1">
                                        True
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                    <label class="form-check-label" for="gridRadios2">
                                        False
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card bg-primary-light">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-sm-10">
                                    <b>Question 3</b>
                                </div>
                                <div class="col-sm-2">
                                    <a href="#">Flag question    <i class="bi bi-flag"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-3">
                            <p>Perhatikan penggalan program berikut : </p>
                            <img src="assets/img/ContohSoal.jpeg" class="card-img-top card-img-bottom pb-2" style="width: 30%" alt="...">
                            <p>Bagian manakah yang menunjukkan kesalahan? (Jawaban bisa lebih dari satu)</p>
                            <div class="col-sm-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                    <label class="form-check-label" for="gridCheck1">
                                        A
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck2">
                                    <label class="form-check-label" for="gridCheck2">
                                        B
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck3">
                                    <label class="form-check-label" for="gridCheck3">
                                        C
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck4">
                                    <label class="form-check-label" for="gridCheck4">
                                        D
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card bg-primary-light">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-sm-10">
                                    <b>Question 4</b>
                                </div>
                                <div class="col-sm-2">
                                    <a href="#">Flag question    <i class="bi bi-flag"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-3">
                            <p>Open merupakan operasi dasar pada file.</p>
                            <div class="col-sm-12">
                                <textarea class="form-control" style="height: 100px"></textarea>
                            </div>
                        </div>
                    </div>
                    <a href="SumOfAttempt.aspx" type="button" class="btn btn-outline-primary">Next</a>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
