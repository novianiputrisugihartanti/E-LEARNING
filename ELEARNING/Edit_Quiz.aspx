<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Edit_Quiz.aspx.cs" Inherits="ELEARNING.Edit_Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <section class="section">
            <div class="row">
                <div class="col-lg-12">

                    <div class="card">
                        <div class="card-body pt-4">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Editing quiz</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Order and paging</button>
                                </li>

                            </ul>
                            <div class="tab-content pt-2" id="myTabContent">
                                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                    <div class="card">
                                        <div class="card-body">
                                            <center>
                                                <h5 class="card-title fw-bold text-dark">Order and paging : abc</h5>
                                            </center>
                                            <div class="row">

                                                <div class="col-md-8">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <h6>Total of marks: 30 | Question: 30 | This quiz is closed</h6>
                                                        </div>
                                                        <div class="col-md-5" style="direction: rtl">
                                                            <button type="button" class="btn btn-outline-warning">Repaginate</button>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <h6 class="pt-2" style="padding-right:10%;">Maximum grade : </h6>
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <input type="text" class="form-control" style="margin-left:-70%;">
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <button type="button" class="btn btn-outline-primary"  style="margin-left:-80%;">Save</button>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">

                                                        <div class="col-md-6">
                                                            <button type="button" class="btn btn-outline-danger">Remove selected</button>
                                                        </div>
                                                        <div class="col-md-6" style="direction: rtl">
                                                            <button type="button" class="btn btn-outline-primary">Add new pages after selected questions</button>
                                                        </div>

                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-md-4">

                                                            <nav>
                                                                <ol class="breadcrumb ">
                                                                    <li class="breadcrumb-item"><a style="color: blue;" href="#">Select all</a></li>
                                                                    <li class="breadcrumb-item"><a style="color: blue;" href="#">Deselect all</a></li>
                                                                </ol>
                                                            </nav>
                                                        </div>
                                                        <div class="col-md-8">

                                                            <div class="row">
                                                                <div class="col-md-7">
                                                                    <h6 style="padding-left:50%; margin-right:-220%;" class="pt-2">Move selected questions to page </h6>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <input type="text" class="form-control" style="padding-right:30%; padding-left:30%;margin-left:78%;">
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <button type="button" class="btn btn-outline-primary" style="padding-right:20%; padding-left:20%;margin-left:68%;">Move</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">

                                                        <div style="direction: rtl">
                                                            <button type="button" class="btn btn-outline-warning">Reorder questions</button>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">

                                                        <div class="col-md-2">
                                                            <h6>Page 1</h6>
                                                        </div>

                                                        <div class="col-md-10">

                                                            <div class="alert border-dark alert-dismissible fade show" role="alert">
                                                                Empty page
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">

                                                    <div class="card-title" style="background-color: darkblue; color: white;">
                                                        <center>
                                                        <h6 >Question bank contents [Hide]</h6>
                                                            </center>
                                                    </div>
                                                    <div class="card-body" style="background-color: lightblue;">
                                                        <form>
                                                            <br />
                                                            <div class="row mb-3">
                                                                <label class="col-sm-7 col-form-label">Select a category</label>
                                                                <div class="col-sm-5">
                                                                    <select class="form-select">
                                                                        <option selected>Default for MI_2C_2022/2023_Pemrograman IV</option>
                                                                        <option value="1">Ado.Net & Store Procedure (20)</option>
                                                                        <option value="2">Arsitektur Wweb & HTML (40)</option>
                                                                        <option value="3">Validation & User Control (29)</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="form-check" style="margin-left: 3%;">
                                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                                    <label class="form-check-label" for="gridCheck1">
                                                                        Show question text in the question list
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="form-check" style="margin-left:3%;">
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
                                                    <br />
                                                    <table id="example" class="display" style="width: 100%">
                                                        <thead>
                                                            <tr>

                                                                <th style="width: 1%; margin-top:10%; margin-bottom:10%;">
                                                                    <input class="form-check-input" type="checkbox" id="gridCheck2">
                                                                </th>
                                                                <th style="width: 1%; "></th>
                                                                <th style="width: 38%;">Question</th>
                                                                <th style="width: 60%;">Action</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>

                                                                <td style=" top: 40% !important"></td>
                                                                <td>
                                                                    <a class="btn btn-outline-primary"  data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></a>
                                                                </td>
                                                                <td>Kumpulan halaman yang menyediakan informasi bagi pengguna dengan akases internet disebut</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>Secara default interface memiliki hak akses...</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>HTTP kependekan dari Hypertext Transfer Protocol</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>Kumpulan halaman yang menyediakan informasi bagi pengguna dengan akases internet disebut</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>Secara default interface memiliki hak akses...</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>HTTP kependekan dari Hypertext Transfer Protocol</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>Kumpulan halaman yang menyediakan informasi bagi pengguna dengan akases internet disebut</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>Secara default interface memiliki hak akses...</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>HTTP kependekan dari Hypertext Transfer Protocol</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>Kumpulan halaman yang menyediakan informasi bagi pengguna dengan akases internet disebut</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>Secara default interface memiliki hak akses...</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td>
                                                                    <button type="button" class="btn btn-outline-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Move to"><i class="bi bi-chevron-double-left"></i></button>
                                                                </td>
                                                                <td>HTTP kependekan dari Hypertext Transfer Protocol</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Setting"><i class="bi bi-gear"></i></button>
                                                                    <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Duplicate"><i class="bi bi-files"></i></button>
                                                                    <button type="button" class="btn btn-success" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Preview"><i class="bi bi-search"></i></button>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <br />
                                                    <div class="card-footer">
                                                        <h6 class="fw-bold text-dark">With selected</h6>
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <button type="button" class="btn btn-primary"><i class="bi bi-caret-left-fill"></i>Add to quiz</button>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <button type="button" class="btn btn-danger">Delete</button>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div class="row">
                                                            <div class="col-sm-6">
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
                                                        <br />
                                                        <h6 class="fw-bold text-dark">Add random question from category</h6>
                                                        <div class="row">
                                                            <div class="col-sm-2">
                                                                <label>Add</label>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <select class="form-select">
                                                                    <option selected>1</option>
                                                                    <option value="1">2</option>
                                                                    <option value="2">3</option>
                                                                    <option value="3">4</option>
                                                                    <option value="3">5</option>
                                                                    <option value="3">6</option>
                                                                    <option value="3">7</option>
                                                                    <option value="3">8</option>
                                                                    <option value="3">9</option>
                                                                    <option value="3">10</option>
                                                                    <option value="3">20</option>
                                                                    <option value="3">30</option>
                                                                    <option value="3">40</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-sm-7">
                                                                <label>random question</label>
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div class="row">

                                                            <div class="col-sm-5">
                                                                <button type="button" class="btn btn-primary">Add to quiz</button>
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                    <div class="card">
                                        <div class="card-body">
                                            <center>
                                                <h5 class="card-title fw-bold text-dark">Order and paging : abc</h5>
                                            </center>
                                            <div class="row">

                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-md-7">
                                                            <h6>Total of marks: 30 | Question: 30 | This quiz is closed</h6>
                                                        </div>
                                                        <div class="col-md-5" style="direction: rtl">
                                                            <button type="button" class="btn btn-outline-warning">Repaginate</button>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <h6>Maximum grade : </h6>
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <input type="text" class="form-control">
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <button type="button" class="btn btn-outline-primary">Save</button>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">

                                                        <div class="col-md-6">
                                                            <button type="button" class="btn btn-outline-danger">Remove selected</button>
                                                        </div>
                                                        <div class="col-md-6" style="direction: rtl">
                                                            <button type="button" class="btn btn-outline-primary">Add new pages after selected questions</button>
                                                        </div>

                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-md-5">

                                                            <nav>
                                                                <ol class="breadcrumb ">
                                                                    <li class="breadcrumb-item"><a style="color: blue;" href="#">Select all</a></li>
                                                                    <li class="breadcrumb-item"><a style="color: blue;" href="#">Deselect all</a></li>
                                                                </ol>
                                                            </nav>
                                                        </div>
                                                        <div class="col-md-7">

                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <h6>Move selected questions to page </h6>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <input type="text" class="form-control">
                                                                </div>
                                                                <div class="col-md-1">
                                                                    <button type="button" class="btn btn-outline-primary">Move</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">

                                                        <div style="direction: rtl">
                                                            <br />
                                                            <button type="button" class="btn btn-outline-warning">Reorder questions</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <h6>Page 1</h6>
                                                </div>
                                                <div class="col-md-10">
                                                    <div class="card" style="outline: 1px solid blue;">
                                                        <div class="card-body pt-3">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th></th>
                                                                        <th></th>
                                                                        <th style="width: 50%"></th>
                                                                        <th style="width: 20%"></th>
                                                                        <th style="width: 10%"></th>
                                                                        <th style="width: 20%"></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>
                                                                            <input class="form-check-input" type="checkbox" id="gridCheck2"></td>
                                                                        <td>1</td>
                                                                        <td>Random question <b>Arsitektur Web & Html</b> </td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-success"><i class="bi bi-search"></i></button>
                                                                            <button type="button" class="btn btn-warning"><i class="bi bi-list-ul"></i></button>
                                                                        </td>
                                                                        <td>
                                                                            <input type="text" class="form-control" />
                                                                        </td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary"><i class="bi bi-arrow-up"></i></button>
                                                                            <button type="button" class="btn btn-info"><i class="bi bi-arrow-down"></i></button>
                                                                            <button type="button" class="btn btn-danger"><i class="bi bi-x-lg"></i></button>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
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
                            <div class="col-md-6">
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
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-body pt-3">
                                        <label id="labelket">Select a question type to see its description</label>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary" id="tambah">Add</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script>
        $(document).ready(function () {
           
            $('#example').DataTable({
                autoWidth: false,
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
