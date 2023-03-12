<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Question_Bank.aspx.cs" Inherits="ELEARNING.Question_Bank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Question Bank</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Dashboard_Dosen.aspx">Home</a></li>
                    <li class="breadcrumb-item active">Question Bank</li>
                </ol>
            </nav>
        </div>

        <section class="section">
            <div class="row">
                <div class="col-lg-12">

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Question Bank</h5>

                            <form>
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label">Select a category</label>
                                    <div class="col-sm-10">
                                        <select class="form-select">
                                            <option selected>Default for MI_2C_2022/2023_Pemrograman I</option>
                                            <option value="1">Ado.Net & Store Procedure (20)</option>
                                            <option value="2">Arsitektur Wweb & HTML (40)</option>
                                            <option value="3">Validation & User Control (29)</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="form-check" style="margin-left: 1%;">
                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                        <label class="form-check-label" for="gridCheck1">
                                            Show question text in the question list
                                        </label>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="form-check" style="margin-left: 1%;">
                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                        <label class="form-check-label" for="gridCheck1">
                                            Also show question from subcategories
                                        </label>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-10">
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ExtralargeModal">Create a new question</button>
                                    </div>
                                </div>
                            </form>




                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body pt-3">
                            <table id="example" class="display" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th style="text-align: center">
                                            <input class="form-check-input" type="checkbox" id="gridCheck2">
                                        </th>
                                        <th>Question</th>
                                        <th style="width: 20%">Action</th>
                                        <th>Created By</th>
                                        <th>Last Modified By</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td>Kumpulan halaman yang menyediakan informasi bagi pengguna dengan akases internet disebut</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#aq"><i class="bi bi-search" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Secara default interface memiliki hak akses...</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>HTTP kependekan dari Hypertext Transfer Protocol</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Kumpulan halaman yang menyediakan informasi bagi pengguna dengan akases internet disebut</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Secara default interface memiliki hak akses...</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>HTTP kependekan dari Hypertext Transfer Protocol</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Kumpulan halaman yang menyediakan informasi bagi pengguna dengan akases internet disebut</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Secara default interface memiliki hak akses...</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>HTTP kependekan dari Hypertext Transfer Protocol</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Kumpulan halaman yang menyediakan informasi bagi pengguna dengan akases internet disebut</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Secara default interface memiliki hak akses...</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>HTTP kependekan dari Hypertext Transfer Protocol</td>
                                        <td>
                                            <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                            <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                            <button type="button" class="btn btn-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-lg"></i></button>
                                        </td>
                                        <td>Noviani Putri Sugihartanti</td>
                                        <td>Erwinda Yasytafiya</td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer">
                            <h6 class="fw-bold text-dark">With selected</h6>
                            <div class="row">
                                <div class="col-sm-1">
                                    <button type="button" class="btn btn-danger">Delete</button>
                                </div>
                                <div class="col-sm-2" style="margin-right: -5%;">
                                    <button type="button" class="btn btn-warning">Move to > ></button>
                                </div>
                                <div class="col-sm-6">
                                    <select class="form-select">
                                        <option selected>Default for MI_2C_2022/2023_Pemrograman I</option>
                                        <option value="1">Ado.Net & Store Procedure (20)</option>
                                        <option value="2">Arsitektur Wweb & HTML (40)</option>
                                        <option value="3">Validation & User Control (29)</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <div class="modal fade" id="ExtralargeModal" tabindex="-1">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Choose a question type to add</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body pt-3">
                                        <h6>QUESTIONS</h6>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="Essay" value="Essay">
                                            <label class="form-check-label" for="gridRadios1">
                                                <%--   <i class="bi bi-file-text"></i>--%>
                                        Essay
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="Multiple" value="Multiple">
                                            <label class="form-check-label" for="gridRadios1">
                                                <%-- <i class="bi bi-list-check"></i>--%>
                                        Multiple Choice
                                            </label>
                                        </div>
                                        <br />
                                        <h6>MATCHING</h6>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="TF" value="True/False">
                                            <label class="form-check-label" for="gridRadios1">
                                                True/False
                                            </label>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-8">
                                <div class="card" style="height:100%;">
                                    <div class="card-body pt-3">
                                        <label id="labelket">Select a question type to see its description</label>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary" id="tambah" style="width:10%">Add</button>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade" id="aq" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Preview question</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-xl-3">
                                <div class="card">
                                    <div class="card-header"><b>Question 1</b></div>
                                    <div class="card-body profile-card pt-4 d-flex flex-column">
                                        <p>Incorrect</p>
                                        <p>Marked out of 1.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-9">

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
                                        <label>Your answer is incorrect</label>
                                        <label>The correct answer is : e. Menutup file</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Start Again</button>
                        <button type="button" class="btn btn-outline-primary">Save</button>
                        <button type="button" class="btn btn-outline-primary">Fill In Correct Response</button>
                        <button type="button" class="btn btn-outline-primary">Submit And Finish</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close Preview</button>
                        
                    </div>
                </div>
            </div>
        </div>
    </main>


    <script>

        $(document).ready(function () {
            $('#Essay').change(function () {
                var coba = document.getElementById("labelket");
                coba.innerHTML = `<p>Allows a response of a few sentences or paragraphs. This must then be graded manually.</p><br/>`;
            });

            $('#Multiple').change(function () {
                var coba = document.getElementById("labelket");
                coba.innerHTML = `<p>Allows the selection of a single or multiple responses from a pre-defined list.</p><br/>`;
            });

            $('#TF').change(function () {
                var coba = document.getElementById("labelket");
                coba.innerHTML = `<p>A simple form of multiple choice question with just the two choices 'True' and 'False'.</p>`;
            });

            $("#tambah").click(function () {
                var radioValue = $("input[name='gridRadios']:checked").val();
                if (radioValue == "Essay") {
                    window.location.href = "Essay_Question_Create.aspx";
                } else if (radioValue == "Multiple") {
                    window.location.href = "Multiple_Choice_Question_Create.aspx";
                } else if (radioValue == "True/False") {
                    window.location.href = "TrueFalse_Question_Create.aspx";
                }
            });

            $('#example').DataTable({
                columnDefs: [{
                    orderable: false,
                    className: 'select-checkbox',
                    targets: 0
                }],
                select: {
                    style: 'os',
                    selector: 'td:first-child'
                },
                order: [[1, 'asc']]
            });

        });

    </script>
</asp:Content>
