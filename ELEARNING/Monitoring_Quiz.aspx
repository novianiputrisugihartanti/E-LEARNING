<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Monitoring_Quiz.aspx.cs" Inherits="ELEARNING.Monitoring_Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="card">

            <h5 class="card-title pt-3" style="margin-left: 3%">Quiz Monitoring</h5>

            <div class="row mb-3">
                <label class="col-sm-3" style="margin-left: 3%">Download table data as</label>

                <div class="col-sm-3" style="margin-left: -8%">
                    <select class="form-select">
                        <option selected>Excel spreadsheet</option>
                        <option value="1">OpenDocument spreadsheet</option>
                        <option value="2">Tab spreadsheet value text file</option>
                        <option value="3">Comma separated values text file</option>
                        <option value="3">Unpaged XHTML document</option>
                    </select>
                </div>
                <div class="col-sm-3">
                    <button type="button" class="btn btn-primary">Download</button>
                </div>

            </div>


            <div class="card-body">


                <!-- Table with hoverable rows -->
                <div class="dataTable-wrapper" style="overflow-x: auto">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">
                                    <input class="form-check-input" type="checkbox" id="gridCheck2"></th>
                                <th scope="col">Name</th>
                                <th>Action</th>
                                <th>Email address</th>
                                <th>State</th>
                                <th>Started on</th>
                                <th>Completed on</th>
                                <th>Time taken</th>
                                <th scope="col">Grade</th>
                                <th scope="col">Q.1</th>
                                <th scope="col">Q.2</th>
                                <th scope="col">Q.3</th>
                                <th scope="col">Q.4</th>
                                <th scope="col">Q.5</th>
                                <th scope="col">Q.6</th>
                                <th scope="col">Q.7</th>
                                <th scope="col">Q.8</th>
                                <th scope="col">Q.9</th>
                                <th scope="col">Q.10</th>
                                <th scope="col">Q.11</th>
                                <th scope="col">Q.12</th>
                                <th scope="col">Q.13</th>
                                <th scope="col">Q.14</th>
                                <th scope="col">Q.15</th>
                                <th scope="col">Q.16</th>
                                <th scope="col">Q.17</th>
                                <th scope="col">Q.18</th>
                                <th scope="col">Q.19</th>
                                <th scope="col">Q.20</th>
                                <th scope="col">Q.21</th>
                                <th scope="col">Q.22</th>
                                <th scope="col">Q.23</th>
                                <th scope="col">Q.24</th>
                                <th scope="col">Q.25</th>
                                <th scope="col">Q.26</th>
                                <th scope="col">Q.27</th>
                                <th scope="col">Q.28</th>
                                <th scope="col">Q.29</th>
                                <th scope="col">Q.30</th>
                                <th scope="col">Q.31</th>
                                <th scope="col">Q.32</th>
                                <th scope="col">Q.33</th>
                                <th scope="col">Q.34</th>
                                <th scope="col">Q.35</th>
                                <th scope="col">Q.36</th>
                                <th scope="col">Q.37</th>
                                <th scope="col">Q.38</th>
                                <th scope="col">Q.39</th>
                                <th scope="col">Q.40</th>
                                <th scope="col">Q.41</th>
                                <th scope="col">Q.42</th>
                                <th scope="col">Q.43</th>
                                <th scope="col">Q.44</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Brandon Jacob</td>
                                <td><a href="Review_Attempt_All.aspx" class="btn btn-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Review attempt"><i class="bi bi-list-ul"></i></a></td>
                                <td>brandon@polman.astra.ac.id</td>
                                <td>Finished</td>
                                <td>14 October 2022 8:10 AM</td>
                                <td>14 October 2022 12:10 AM</td>
                                <td>50 mins 30 secs</td>
                                <td>70.89</td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                                <td><a style="color: green;" class="btn btn-link" href="#">20</a></td>
                                <td><a style="color: red;" class="btn btn-link" href="#">10</a></td>
                            </tr>

                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="8">Overall average
                                </td>
                                <td><a class="fw-bold text-dark" href="#">57.92(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                                <td><a style="color: grey;" href="#">0.35(24)</a></td>
                                <td><a style="color: grey;" href="#">1.25(24)</a></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>

            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="row mb-3">
                        <div class="col-sm-4" style="margin-left: 2%">
                            <ol class="breadcrumb ">
                                <li class="breadcrumb-item"><a style="color: blue;" href="#">Select all</a></li>
                                <li class="breadcrumb-item"><a style="color: blue;" href="#">Deselect all</a></li>
                            </ol>
                        </div>
                        <div class="col-sm-8" style="margin-left: -17%">


                            <button type="button" class="btn btn-warning">Regrade selected attempts</button>&nbsp;&nbsp;
                               <button type="button" class="btn btn-danger">Delete selected attempts</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <center>
                    <h5 class="card-title" >Overall Number Of Students Achieving Grade Ranges</h5>
                </center>
                <center>
                <figure class="highcharts-figure">
                    <div id="container"></div>

                </figure></center>
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
                                ['0.00 - 10.00', 0],
                                ['10.00 - 20.00', 0],
                                ['20.00 - 30.00', 0],
                                ['30.00 - 40.00', 1],
                                ['40.00 - 50.00', 2],
                                ['50.00 - 60.00', 3],
                                ['60.00 - 70.00', 4],
                                ['70.00 - 80.00', 5],
                                ['80.00 - 90.00', 6],
                                ['90.00 - 100.00', 0]
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
    </main>
</asp:Content>
