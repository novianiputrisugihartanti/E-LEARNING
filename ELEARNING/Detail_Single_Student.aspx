<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Detail_Single_Student.aspx.cs" Inherits="ELEARNING.Detail_Single_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <center>
            <div class="pagetitle">
                <div class="card">
                    <div class="card-body">
                        <h1 class="pt-3">Detail Student</h1>
                    </div>
                </div>


            </div>
            <!-- End Page Title -->
        </center>
        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle" width="75" height="75" >
                                </div>
                                <div class="col-md-8">
                                    <h2 style="margin-left:5%;"><asp:Label runat="server" ID="lblnama"></asp:Label></h2>
                                    <h3 style="margin-left:5%;"><asp:Label runat="server" ID="lblnim"></asp:Label></h3>
                                </div>
                            </div>
                            

                            <hr style="width: 75%; text-align: left; margin-left: 0; color: blue; background-color: blue; height: 2px;">
                            <table class="table">
                                <tbody>
                                    <tr class="table-primary">
                                        <th scope="row">Level Of Knowledge</th>
                                        <td><asp:Label runat="server" ID="lblLOK"></asp:Label></td>
                                    </tr>
                                    <tr class="table-primary">
                                        <th scope="row">Stage</th>
                                        <td><asp:Label runat="server" ID="lblStage"></asp:Label></td>
                                    </tr>
                                    <tr class="table-primary">
                                        <th scope="row">Learning Style</th>
                                        <td><asp:Label runat="server" ID="lblLS"></asp:Label></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <section class="section dashboard">
                        <div class="card" >
                            <h5 class="card-title" style="margin-left: 3%">Completed Module</h5>
                            <div class="card-body dataTable-wrapper"style="height:270px; overflow-x: auto" >
                                <div class="col-md-8">
                                    

                                    <div class="activity">

                                        <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 1
                                            </div>
                                        </div>


                                        <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 2
                                            </div>
                                        </div>

                                                                                <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 1
                                            </div>
                                        </div>


                                        <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 2
                                            </div>
                                        </div>

                                                                                <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 1
                                            </div>
                                        </div>


                                        <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 2
                                            </div>
                                        </div>

                                                                                <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 1
                                            </div>
                                        </div>


                                        <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 2
                                            </div>
                                        </div>

                                                                                <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 1
                                            </div>
                                        </div>


                                        <div class="activity-item d-flex">
                                            <div class="activite-label"></div>
                                            <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                                            <div class="activity-content fw-bold text-dark">
                                                Module 2
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>


                        </div>
                    </section>
                </div>

                <div class="col-xl-8">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body pt-3">
                                    <div class="row">
                                        <div class="col-md-9">
                                                                                <h1 class="text-success">45%</h1>
                                    <h5>Progress on this stage</h5>
                                        </div>
                                        <div class="col-md-3 pt-3">
                                            <div class="progress-pie-color" data-value="45"></div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body pt-3">
                                    <h5 class="fw-bold text-dark pt-3">On Going Module</h5>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <h6>Module 3</h6>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="progress">
                                                <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">80%</div>
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
                                     <h6 class="card-title">Average : 56</h6>    
                                  

                                    <figure class="highcharts-figure">
                                        <div id="container"></div>

                                    </figure>
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
                                                min: 0,
                                                title: {
                                                    text: 'Mark'
                                                },
                                                visible: true

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
                </div>


            </div>

        </section>
    </main>
</asp:Content>
