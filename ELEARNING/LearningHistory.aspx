<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="LearningHistory.aspx.cs" Inherits="ELEARNING.LearningHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Learning History</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">History</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section">
            <div class="row">
                <div class="col-lg-12">

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Your Learning History</h5>

                            <!-- Table with stripped rows -->
                            <table class="table datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Course Code</th>
                                        <th scope="col">Course Name</th>
                                        <th scope="col">LoK</th>
                                        <th scope="col">Modul</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">MDL01</th>
                                        <td>Basis Data</td>
                                        <td>Pemula</td>
                                        <td>Modul 1</td>
                                        <td><a href="DetailHistory.aspx" type="button" class="btn btn-primary">Detail</a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">MDL02</th>
                                        <td>Organisasi dan Arsitektur Komputer</td>
                                        <td>Pemula</td>
                                        <td>Modul 1</td>
                                        <td><a href="DetailHistory.aspx" type="button" class="btn btn-primary">Detail</a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">MDL03</th>
                                        <td>Sistem Informasi</td>
                                        <td>Moderat</td>
                                        <td>Modul 1</td>
                                        <td><a href="DetailHistory.aspx" type="button" class="btn btn-primary">Detail</a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">MDL04</th>
                                        <td>Basis Data</td>
                                        <td>Moderat</td>
                                        <td>Modul 2</td>
                                        <td><a href="DetailHistory.aspx" type="button" class="btn btn-primary">Detail</a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">MDL05</th>
                                        <td>Pengantar Informatika</td>
                                        <td>Lanjut</td>
                                        <td>Modul 1</td>
                                        <td><a href="DetailHistory.aspx" type="button" class="btn btn-primary">Detail</a></td>
                                    </tr>

                                </tbody>
                            </table>
                            <!-- End Table with stripped rows -->

                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->
</asp:Content>
