<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ELEARNING.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <main id="main" class="main">

        <div class="pagetitle">
            <h1>Profile</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">Student Profile</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->


        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
                            <asp:Repeater ID="RptprofilePhoto" runat="server">
                                <ItemTemplate>
                                    <img src="assets/img/<%# DataBinder.Eval(Container.DataItem, "profilePhoto") %>" alt="Profile" width="100%" class="">
                                </ItemTemplate>
                            </asp:Repeater>
                            
                            <br />
                            <a href="#" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#basicModal" title="Upload new profile image"><i class="bi bi-upload"></i>&nbsp Edit Photo</a>
                            <div class="modal fade" id="basicModal" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Edit Profile Photo</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="col-sm-10">
                                                <%--<input class="form-control" type="file" id="formFilse">--%>
                                                <asp:FileUpload ID="formFile" runat="server" CssClass="form-control" />
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <asp:Button CssClass="btn btn-primary" ID="btnUpdate" runat="server" Text="Save Changes" OnClick="btnUpdate_Click"/>
                                            <%--<button type="button" class="btn btn-primary">Save changes</button>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <asp:Repeater ID="RptProfile" runat="server">
                                <ItemTemplate>
                                    <h2><%# DataBinder.Eval(Container.DataItem, "nama") %></h2>
                                    <h3><b>Stage: <%# DataBinder.Eval(Container.DataItem, "stage") %></b></h3>
                                    <div class="pt-1">

                                        <h6>Last Login: 2 January 2023</h6>
                                        <h6>Level of Knowledge: <%# DataBinder.Eval(Container.DataItem, "lok") %></h6>
                                        <h6>Learning Style: <%# DataBinder.Eval(Container.DataItem, "ls") %></h6>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>


                        </div>
                    </div>

                </div>

                <div class="col-xl-8">

                    <div class="card pt-3">
                        <div class="card-body">
                            <!-- Nav tabs -->
                            <div class="custom-tab-1">
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-bs-toggle="tab" href="#CSHistory"><i class="la la-user me-2"></i>History of College Status</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-bs-toggle="tab" href="#LHistory"><i class="la la-phone me-2"></i>Learning History</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="CSHistory">
                                        <div class="col-lg-12">

                                            <!-- Table with stripped rows -->
                                            <table class="table datatable">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">No</th>
                                                        <th scope="col">Semester</th>
                                                        <th scope="col">Status</th>
                                                        <th scope="col">SKS</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>2021/Ganjil</td>
                                                        <td>Aktif</td>
                                                        <td>18</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>2021/Genap</td>
                                                        <td>Aktif</td>
                                                        <td>19</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>2022/Ganjil</td>
                                                        <td>Aktif</td>
                                                        <td>20</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">4</th>
                                                        <td>2022/Genap</td>
                                                        <td>Aktif</td>
                                                        <td>19</td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                            <!-- End Table with stripped rows -->

                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="LHistory">
                                        <div class="pt-4">
                                            <div class="row">
                                                <div class="col-lg-12">

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
                                    <div class="tab-pane fade" id="message1">
                                        <div class="pt-4">
                                            <h4>This is message title</h4>
                                            <p>
                                                Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor.
                                            </p>
                                            <p>
                                                Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->
</asp:Content>
