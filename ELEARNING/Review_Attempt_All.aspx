<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Review_Attempt_All.aspx.cs" Inherits="ELEARNING.Review_Attempt_All" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <!-- End Page Title -->

        <section class="section profile">
            <div class="row">
                <div class="col-xl-2">
                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column">
                            <center>
                                <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle" style="width: 50%; height: 50%;">
                                <br />
                                <br />
                                <h3 class="fw-bold">Amelia Canin</h3>
                            </center>
                        </div>
                    </div>
                </div>
                <div class="col-md-10">
                    <div class="card" style="padding-bottom: -1%;">
                        <div class="card-body pt-3 " style="padding-bottom: -10%;">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label fw-bold">Started on</label>
                                        <div class="col-sm-8">
                                            <label>Friday, 14 Agustus 2023</label>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label fw-bold">State</label>
                                        <div class="col-sm-8">
                                            <label>Finished</label>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label fw-bold">Completed on</label>
                                        <div class="col-sm-8">
                                            <label>Friday, 14 Agustus 2023</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label fw-bold">Time taken</label>
                                        <div class="col-sm-8">
                                            <label>57 mins 32 secs</label>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label fw-bold">Marks</label>
                                        <div class="col-sm-8">
                                            <label>30.00/30.00</label>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label fw-bold">Grade</label>
                                        <div class="col-sm-8">
                                            <label><b>60.00</b> out of 100.00</label>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                </div>

            </div>

            <div class="row">
                <div class="col-xl-2">
                    <div class="card">
                        <div class="card-header"><b>Quiz Navigation</b></div>
                        <div class="card-body profile-card pt-4 d-flex flex-column">
                            <div>
                                <button class="btn btn-outline-success" href="#">1</button>
                                <button class="btn btn-outline-danger" href="#">2</button>
                                <button class="btn btn-outline-success" href="#">3</button>
                                <button class="btn btn-outline-danger" href="#">4</button>
                            </div>
                            <br />
                            <a class="breadcrumb-item" href="#">Finish attempt...</a>
                            <p>Time left <b>0:30:00</b></p>
                        </div>
                    </div>
                    <div class="card bg-light">
                        <div class="card-header text-center"><b>Question 1</b></div>
                        <div class="card-body profile-card pt-4 d-flex flex-column">
                            <p>
                                <b>Answer saved<br />
                                    Marked out of 1.00</b>
                            </p>
                            <a href="#" class="linkedin"><i class="bi bi-flag"></i>Flag question</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-10">

                    <div class="card bg-primary-light">
                        <div class="card-body pt-3">
                            <p>Dibawah ini adalah operasi dasar pada file, <b>kecuali</b> : </p>

                            <div class="col-sm-10" style="background-color: lightcoral;">

                                <div class="form-check">

                                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>

                                    <label class="form-check-label" for="gridRadios1">
                                        Membuka atau mengaktifkan file
                                   
                                    </label>
                                </div>
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
                    <div class="card" style="background-color: lightyellow;">
                        <div class="card-body pt-3">
                            <label>The correct answer is : e. Menutup file</label>
                        </div>
                    </div>
                    <div class="card" style="background-color: lightgray;">
                        <div class="card-body pt-3">
                            <label style="color: cornflowerblue">Make comment or override work</label>
                        </div>
                    </div>
                    <div class="card">
                        <center>
                            <h6 class="fw-bold pt-3">Response History</h6>
                        </center>

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">Step</th>
                                    <th scope="col">Time</th>
                                    <th>Action</th>
                                    <th>State</th>
                                    <th>Marks</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>14/10/22 08.10</td>
                                    <td>Started</td>
                                    <td>Not yet answered</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>14/10/22 08.24</td>
                                    <td>Saves Use Smart/Navigation</td>
                                    <td>Answer saved</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>14/10/22 09.07</td>
                                    <td>Attempt finished</td>
                                    <td>Incorrect</td>
                                    <td><b>1.0</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
            </div>

            </div>
        </section>

    </main>
</asp:Content>
