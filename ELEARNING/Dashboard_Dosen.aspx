<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Dashboard_Dosen.aspx.cs" Inherits="ELEARNING.Dashboard_Dosen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .radius-10 {
            border-radius: 10px !important;
        }

        .border-info {
            border-left: 5px solid #0dcaf0 !important;
        }

        .border-danger {
            border-left: 5px solid #fd3550 !important;
        }

        .border-success {
            border-left: 5px solid #15ca20 !important;
        }

        .border-warning {
            border-left: 5px solid #ffc107 !important;
        }

        .border-infos {
            border-top: 5px solid #0dcaf0 !important;
        }

        .border-dangers {
            border-top: 5px solid #fd3550 !important;
        }

        .border-successs {
            border-top: 5px solid #15ca20 !important;
        }

        .border-warnings {
            border-top: 5px solid #ffc107 !important;
        }

        .border-ungu {
            border-top: 5px solid #c684dc !important;
        }

        .border-pastel {
            border-top: 5px solid #F09030 !important;
        }

        .border-brown {
            border-top: 5px solid #b3744e !important;
        }


        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 0px solid rgba(0, 0, 0, 0);
            border-radius: .25rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
        }

        .bg-gradient-scooter {
            background: #17ead9;
            background: -webkit-linear-gradient( 45deg, #17ead9, #6078ea) !important;
            background: linear-gradient( 45deg, #17ead9, #6078ea) !important;
        }

        .widgets-icons-2 {
            width: 56px;
            height: 56px;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #ededed;
            font-size: 27px;
            border-radius: 10px;
        }

        .rounded-circle {
            border-radius: 50% !important;
        }

        .text-white {
            color: #fff !important;
        }

        .ms-auto {
            margin-left: auto !important;
        }

        .bg-gradient-bloody {
            background: #f54ea2;
            background: -webkit-linear-gradient( 45deg, #f54ea2, #ff7676) !important;
            background: linear-gradient( 45deg, #f54ea2, #ff7676) !important;
        }

        .bg-gradient-ohhappiness {
            background: #00b09b;
            background: -webkit-linear-gradient( 45deg, #00b09b, #96c93d) !important;
            background: linear-gradient( 45deg, #00b09b, #96c93d) !important;
        }

        .bg-gradient-blooker {
            background: #ffdf40;
            background: -webkit-linear-gradient( 45deg, #ffdf40, #ff8359) !important;
            background: linear-gradient( 45deg, #ffdf40, #ff8359) !important;
        }
    </style>
    <main id="main" class="main" <%--style="margin-left:15%!important"--%>>

        <div class="pagetitle">
            <table style="position: relative; width: 100%;">
                <tbody>
                    <tr>
                        <td>
                            <h1>Dashboard</h1>
                        </td>
                        <td dir="rtl" style="padding-left: 700px;">
                            <div style="direction: rtl">
                                <h1>Course : Pemrograman 1</h1>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="Dashboard_Dosen.aspx">Home</a></li>
                                    <li class="breadcrumb-item active">Dashboard</li>
                                </ol>
                            </nav>
                        </td>
                    </tr>
                </tbody>
            </table>




        </div>

        <section class="section dashboard">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <%--                        <div class="col-xxl-4 col-md-6">
                            <div class="card info-card revenue-card">

                                <div class="card-body">
                                    <h5 class="card-title"></h5>

                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-person-fill"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6>30</h6>
                                            <span class="text-muted small pt-2 ps-1">students</span>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>--%>
                        <%--                        <div class="col-xxl-4 col-md-6">
                            <div class="card info-card sales-card">

                                <div class="card-body">
                                    <h5 class="card-title"></h5>

                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-card-checklist"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6>50</h6>
                                            <span class="text-muted small pt-2 ps-1">tasks</span>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>--%>
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header text-dark">My Student</div>
                                <br />
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="card info-card revenue-card" style="margin-left: 1.3em; width: 90%;">
                                            <div class="card-body">
                                                <h5 class="card-header text-dark" style="margin-left: -5%; font-size: 17px;">Number Of Students</h5>
                                                <br />
                                                <div class="d-flex align-items-center">
                                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                        <i class="bi bi-person-fill"></i>
                                                    </div>
                                                    <div class="ps-3">
                                                        <h6>30</h6>
                                                    </div>
                                                    <div class="ps-2">
                                                        <span class="text-muted small pt-1 ps-1" style="font-size: 23px;">students</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="card" >
                                                <div class="card-header text-dark">Level Of Knowledge</div>
                                                <div class="card-body" >
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <center>
                                                                <div class="card radius-10  border-dangers">
                                                                    <div class="card-body pt-3" >
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Beginner</p>
                                                                                <h4 class="my-1 text-danger">12 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLoK_Beginner.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <center>
                                                                <div class="card radius-10  border-warnings" style="margin-left: -5%!important; margin-right: -5%!important;">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Moderate</p>
                                                                                <h4 class="my-1 text-warning">10 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLoK_Moderate.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <center>
                                                                <div class="card radius-10  border-infos">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Expert</p>
                                                                                <h4 class="my-1 text-info">5 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLoK_Expert.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>

                                                    </div>
                                                    <%--                                                  <div class="row">
                                                        <div class="col-md-12">

                                                            <div class="input-group mb-3">
                                                                <input type="text" class="form-control" placeholder="Search Student" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                                                <span class="input-group-text" id="basic-addon2"><i class="bi bi-search"></i></span>
                                                            </div>

                                                        </div>

                                                    </div>--%>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="card-body" style="margin-left: -7%!important;">
                                            <div class="card">
                                                <div class="card-header text-dark">Learning Style</div>
                                                <div class="card-body">
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <center>
                                                                <div class="card radius-10  border-ungu">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Active</p>
                                                                                <h4 class="my-1" style="color: #c684dc;">5 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLS_Active.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <center>
                                                                <div class="card radius-10  border-ungu">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Reflective</p>
                                                                                <h4 class="my-1" style="color: #c684dc;">6 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLS_Reflective.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                        <div class="col-md-3">

                                                            <center>
                                                                <div class="card radius-10  border-brown">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Sensing</p>
                                                                                <h4 class="my-1" style="color: #b3744e;">5 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLS_Sensing.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <center>
                                                                <div class="card radius-10  border-brown">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Intuitive</p>
                                                                                <h4 class="my-1" style="color: #b3744e;">6 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLS_Intuitive.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-md-3">

                                                            <center>
                                                                <div class="card radius-10  border-pastel">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Visual</p>
                                                                                <h4 class="my-1" style="color: #F09030;">10 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLS_Visual.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                        <div class="col-md-3">

                                                            <center>
                                                                <div class="card radius-10  border-pastel">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Verbal</p>
                                                                                <h4 class="my-1" style="color: #F09030;">9 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLS_Verbal.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                        <div class="col-md-3">

                                                            <center>
                                                                <div class="card radius-10  border-successs">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Sequential</p>
                                                                                <h4 class="my-1" style="color: #15ca20;">9 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLS_Sequential.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                        <div class="col-md-3">

                                                            <center>
                                                                <div class="card radius-10  border-successs">
                                                                    <div class="card-body pt-3">
                                                                        <div class="align-items-center">
                                                                            <div>
                                                                                <p class=" text-dark">Global</p>
                                                                                <h4 class="my-1" style="color: #15ca20;">3 <i class="bi bi-person-fill"></i></h4>
                                                                                <a href="Detail_Student_ByLS_Global.aspx" class="btn btn-outline-primary">Details</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </center>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                        <!-- End Card with header and footer -->

                        <div class="col-12">
                            <!-- Card with header and footer -->
                            <div class="card">
                                <div class="card-header text-dark">Learning Progress</div>
                                <br />

                                <div class="card-body">
                                    <br />
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">



                                                <%--                                                <div class="col-md-4">

                                                    <div class="alert alert-danger" style="border-color: #374263; border-style: solid; border-radius: -10%;" role="alert">
                                                        <center>
                                                            <p>Beginner</p>
                                                            <div class="progress-pie" data-value="93"></div>
                                                        </center>

                                                    </div>
                                                </div>
                                                <div class="col-md-4">

                                                    <div class="alert alert-warning" style="border-color: #374263; border-style: solid; border-radius: -10%;" role="alert">
                                                        <center>
                                                            <p>Moderate</p>
                                                            <h3>70%</h3>
                                                        </center>

                                                    </div>
                                                </div>
                                                <div class="col-md-4">

                                                    <div class="alert alert-info " style="border-color: #374263; border-style: solid; border-radius: -10%;" role="alert">
                                                        <center>
                                                            <p>Expert</p>

                                                            <h3>80%</h3>
                                                        </center>

                                                    </div>
                                                </div>--%>

                                                <div class="container">

                                                    <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3">

                                                        <div class="col">
                                                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                                                <div class="card-body pt-3">
                                                                    <div class="d-flex align-items-center">
                                                                        <div>
                                                                            <p class="mb-0 text-dark">Level Of Knowledge</p>
                                                                            <h4 class="my-1 text-info">Beginner</h4>
                                                                            <p class="mb-0 font-13 text-dark">30%</p>
                                                                        </div>
                                                                        <div class="rounded-circle  ms-auto">
                                                                            <div class="progress-pie-color" data-value="30"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                                                <div class="card-body pt-3"  >
                                                                    <div class="d-flex align-items-center" >
                                                                        <div>
                                                                            <p class="mb-0 text-dark">Level Of Knowledge</p>
                                                                            <h4 class="my-1 text-info">Moderate</h4>
                                                                            <p class="mb-0 font-13 text-dark">55%</p>
                                                                        </div>
                                                                        <div class="rounded-circle  ms-auto">
                                                                            <div class="progress-pie-color" data-value="55"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                                                <div class="card-body pt-3">
                                                                    <div class="d-flex align-items-center">
                                                                        <div>
                                                                            <p class="mb-0 text-dark">Level Of Knowledge</p>
                                                                            <h4 class="my-1 text-info">Expert</h4>
                                                                            <p class="mb-0 font-13 text-dark">93%</p>
                                                                        </div>
                                                                        <div class="rounded-circle  ms-auto">
                                                                            <div class="progress-pie-color" data-value="93"></div>
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
                                    <div class="row">

                                        <div class="col-md-12">

                                            <div class="card">



                                                <div class="card-body">
                                                    <center>
                                                        <h5 class="card-title">Average Test Result</h5>
                                                    </center>
                                                    <center>
                                                        <figure class="highcharts-figure">
                                                            <div id="container"></div>

                                                        </figure>
                                                    </center>
                                                    <script>
                                                        Highcharts.chart('container', {
                                                            chart: {
                                                                type: 'column'
                                                            },
                                                            title: {
                                                                text: ''
                                                            },
                                                            subtitle: {
                                                                text: ''
                                                            },
                                                            xAxis: {
                                                                type: 'category',
                                                                labels: {

                                                                    style: {
                                                                        fontSize: '9px',
                                                                        fontFamily: 'Verdana, sans-serif'
                                                                    }
                                                                }
                                                            },
                                                            yAxis: {

                                                                visible: true,
                                                                        min: 0,
                                                                title: {
                                                                    text: 'Average'
                                                                }
                                                            },
                                                            legend: {
                                                                enabled: false
                                                            },
                                                            tooltip: {
                                                                pointFormat: 'Population in 2021: <b>{point.y} millions</b>'
                                                            },
                                                            series: [{
                                                                name: 'Population',
                                                                data: [
                                                                    ['Module 1', 78],
                                                                    ['Module 2', 90],
                                                                    ['Module 3', 70],
                                                                    ['Module 4', 76],
                                                                    ['Module 5', 85],
                                                                    ['Module 6', 78],
                                                                    ['Module 7', 90],
                                                                    ['Module 8', 70],
                                                                    ['Module 9', 85],
                                                                    ['Module 10', 84],
                                                                    ['Module 11', 83],
                                                                    ['Module 12', 75],
                                                                    ['Module 13', 86],
                                                                    ['Module 14', 78],
                                                                    ['Module 15', 77],
                                                                    ['Module 16', 70],
                                                                ],
                                                                //dataLabels: {
                                                                //    enabled: true,

                                                                //    color: '#FFFFFF',
                                                                //    align: 'center',
                                                                //    format: '{point.y}', // one decimal
                                                                //    y: 10, // 10 pixels down from the top
                                                                //    style: {
                                                                //        fontSize: '9px',
                                                                //        fontFamily: 'Verdana, sans-serif'
                                                                //    }
                                                                //}
                                                            }]
                                                        });
                                                    </script>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <center>
                                                        <h5 class="card-title">Kunjungan</h5>
                                                    </center>


                                                    <div class="row">

                                                        <table style="position: relative; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td  style="width:50%;padding-left: 0px;padding-right:0px;">
                                                                        <div class="input-group w-50">
                                                                            <input type="text" id="datepicker" class="form-control" />
                                                                            <span class="input-group-text"><i class="bi bi-calendar4-week"></i></span>
                                                                        </div>
                                                                    </td>
                                                                    <td style="padding-left: 100px;padding-right:250px; width:50%;">
                                                                        <div>

                                                                            <div class="btn-group " role="group" style="margin-left: 55%!important;">
                                                                                <button type="button" class="btn btn-outline-primary">Hari</button>
                                                                                <button type="button" class="btn btn-outline-primary">Minggu</button>
                                                                                <button type="button" class="btn btn-outline-primary">Bulan</button>
                                                                                <button type="button" class="btn btn-outline-primary">Tahun</button>
                                                                                <button type="button" class="btn btn-outline-primary">Keseluruhan</button>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>


                                                        <script>

                                                            var picker = new Lightpick({
                                                                field: document.getElementById('datepicker'),
                                                                singleDate: false,
                                                                onSelect: function (start, end) {
                                                                    var str = '';
                                                                    str += start ? start.format('Do MMMM YYYY') + ' to ' : '';
                                                                    str += end ? end.format('Do MMMM YYYY') : '...';
                                                                    document.getElementById('datepicker').innerHTML = str;
                                                                }
                                                            });
                                                        </script>
                                                    </div>
                                                    <div class="row">
                                                            <center>
                                                                <figure class="highcharts-figure mt-3">
                                                                    <div id="containers"></div>
                                                                </figure>
                                                            </center>
                                                            <script>
                                                                Highcharts.chart('containers', {

                                                                    title: {
                                                                        text: ''
                                                                    },

                                                                    subtitle: {
                                                                        text: ''
                                                                    },

                                                                    yAxis: {
                                                                        min: 0,
                                                                        title: {
                                                                            text: 'People Amount'
                                                                        }
                                                                    },

                                                                    xAxis: {
                                                                        type: 'datetime',
                                                                        dateTimeLabelFormats: {
                                                                            month: '%d/%M',

                                                                        },
                                                                        title: {
                                                                            text: 'Date'
                                                                        }

                                                                    },

                                                                    legend: {
                                                                        enabled: false
                                                                    },

                                                                    series: [{
                                                                        name: '',
                                                                        data: [
                                                                            [Date.UTC(2023, 1, 4), 25],
                                                                            [Date.UTC(2023, 1, 5), 20],
                                                                            [Date.UTC(2023, 1, 6), 27],
                                                                            [Date.UTC(2023, 1, 7), 45],
                                                                            [Date.UTC(2023, 1, 8), 40],
                                                                            [Date.UTC(2023, 1, 9), 50],

                                                                        ]

                                                                    }],

                                                                    //responsive: {
                                                                    //    rules: [{
                                                                    //        condition: {
                                                                    //            maxWidth: 500
                                                                    //        },
                                                                    //        chartOptions: {
                                                                    //            legend: {
                                                                    //                enabled: false
                                                                    //            }
                                                                    //        }
                                                                    //    }]
                                                                    //}

                                                                });

                                                            </script>
                                                        </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- Reports -->

                    <!-- End Reports -->



                </div>
            </div>
            <!-- End Left side columns -->

            </div>
        </section>

    </main>
</asp:Content>
