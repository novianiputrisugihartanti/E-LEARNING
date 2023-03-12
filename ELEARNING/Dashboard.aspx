<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Mhs.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ELEARNING.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <main id="main" class="main">

        <div class="pagetitle">
            <h1>Dashboard</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->
        <section class="section dashboard">
            <div class="row">
                <div class="col-sm-5">
                    <div class="card" style="height: 300px">
                        <div class="card-body">
                            <h5 class="card-title"><b>Learning Progress</b></h5>
                            <!-- Donut Chart -->
                            <div id="donutChart" class="align-items-center"></div>
                            <script>
                                document.addEventListener("DOMContentLoaded", () => {
                                    new ApexCharts(document.querySelector("#donutChart"), {
                                        series: [44, 55, 13],
                                        chart: {
                                            height: 360,
                                            width: 360,
                                            type: 'donut'
                                        },
                                        labels: ['3 Modules completed', '1 Module on progress', '2 Upcoming modules'],
                                    }).render();
                                });
                            </script>
                            <!-- End Donut Chart -->
                            <div class="d-flex align-items-center">
                                <div class="ps-3">
                                    <span class="text-muted small pt-2 ps-1">You have 6 modules assigned</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card col-lg-7" style="height: 300px">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-9">
                                        <h5 class="card-title"><b>Learning Path</b></h5>
                                    </div>
                                    <div class="col-lg-3">
                                        <p class="card-text pt-3"><b>Average: 78.5</b></p>
                                    </div>
                                </div>
                                <!-- Bar Chart -->
                                <div id="barChart" style="height: 250px;"></div>
                                <script>
                                    document.addEventListener("DOMContentLoaded", () => {
                                        echarts.init(document.querySelector("#barChart")).setOption({
                                            xAxis: {
                                                type: 'category',
                                                data: ['Mod 1', 'Mod 2', 'Mod 3', 'Mod 4']
                                            },
                                            yAxis: {
                                                type: 'value'
                                            },
                                            series: [{
                                                data: [78, 90, 70, 76],
                                                type: 'bar'
                                            }]
                                        });
                                    });
                                </script>
                                <!-- End Bar Chart -->
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-12">
                    <div class="card ">
                        <div class="card-body pt-1 flex-column">
                            <h5 class="card-title"><b>Learning Path</b></h5>
                            <br />
                            <div class="row text-center">
                                <div class="col-md-2">
                                    <div class="d-flex">
                                        <div>
                                            <label style="font-size: 12px" class="d-block text-center"><b>1. Konsep Algoritma</b></label>
                                            <button class="button-circle button5 bg-success"></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2 col-md-1">
                                    <div class="d-flex project-image">
                                        <div>
                                            <button class="button-circle button5 bg-success"></button>
                                            <label style="font-size: 12px" class="d-block text-center"><b>2. Tipe, Ekspresi</b></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2 col-md-1">
                                    <div class="d-flex project-image">
                                        <div>
                                            <button class="button-circle button5 bg-primary"></button>
                                            <label style="font-size: 12px" class="d-block text-center"><b>4. Pengenalan Bahasa C</b></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2 col-md-1">
                                    <div class="d-flex project-image">
                                        <div>
                                            <label style="font-size: 12px" class="d-block text-center"><b>5. Translasi Algoritma</b></label>
                                            <button class="button-circle button5 bg-warning"></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2 col-md-1">
                                    <div class="d-flex project-image">
                                        <div>
                                            <button class="button-circle button5 bg-danger"></button>
                                            <label style="font-size: 12px" class="d-block text-center"><b>Ujian Kompetensi</b></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2 pt-4">
                                    <div class="d-flex align-items-center" style="font-size:14px"><i class="bi bi-circle-fill text-success me-1"></i> Completed</div>
                                    <div class="d-flex align-items-center" style="font-size:14px"><i class="bi bi-circle-fill text-primary me-1"></i> On Progress</div>
                                    <div class="d-flex align-items-center" style="font-size:14px"><i class="bi bi-circle-fill text-warning me-1"></i> Upcoming</div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12">
                    <div class="card" style="height: 300px">
                        <div class="card-body">
                            <h5 class="card-title"><b>Your Task List</b></h5>
                            <h6>Total Task: 6</h6>
                            <h6>Completed Task: 2</h6>
                            <br />
                            <div class="card-body pt-1 flex-column">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div>
                                            <div class="card col-xl-12 text-center bg-success-light" style="height: 120px">
                                                <div class="card-header">
                                                    Completed Task:
                                                </div>
                                                <div class="card-body pt-2">
                                                    <p style="font-size: 16px">
                                                        <b>Module 1</b><br />
                                                        <b>Module 2</b>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div>
                                            <div class="card col-xl-12 text-center bg-primary-light" style="height: 120px">
                                                <div class="card-header">
                                                    Completed Task:
                                                </div>
                                                <div class="card-body pt-2">
                                                    <p style="font-size: 16px">
                                                        <b>Module 1</b><br />
                                                        <b>Module 2</b>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div>
                                            <div class="card col-xl-12 text-center bg-warning-light" style="height: 120px">
                                                <div class="card-header">
                                                    Completed Task:
                                                </div>
                                                <div class="card-body pt-2">
                                                    <p style="font-size: 16px">
                                                        <b>Module 1</b><br />
                                                        <b>Module 2</b>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div>
                                            <div class="card col-xl-12 text-center bg-danger-light" style="height: 120px">
                                                <div class="card-header">
                                                    Completed Task:
                                                </div>
                                                <div class="card-body pt-2">
                                                    <p style="font-size: 16px">
                                                        <b>Module 1</b><br />
                                                        <b>Module 2</b>
                                                    </p>
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
    </main>
</asp:Content>
