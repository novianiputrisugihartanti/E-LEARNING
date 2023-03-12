<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Modul_List.aspx.cs" Inherits="ELEARNING.Modul_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /* The container <div> - needed to position the dropdown content */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        /* Dropdown Content (Hidden by Default) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            /* Links inside the dropdown */
            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                /* Change color of dropdown links on hover */
                .dropdown-content a:hover {
                    background-color: #ddd;
                }

        /* Show the dropdown menu on hover */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Change the background color of the dropdown button when the dropdown content is shown */
        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }
    </style>
    <main id="main" class="main">
        <div class="card">
            <div class="card-title">
                <center>
                    Pemrograman 1
                </center>
            </div>
            <div class="card-body">
                <div class="card" style="outline: 1px solid blue;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-10">
                                <h4 class="card-title pt-3">
                                    <button type="button" class="btn btn-outline-secondary"><i class="bi bi-arrows-move"></i></button>
                                    1 Januari 2022 - 7 Januari 2022</h4>
                            </div>
                            <div class="col-md-2 pt-3" style="direction: rtl;">
                                <a href="Edit_Card_Modul.aspx" class="btn btn-outline-secondary"><i class="bi bi-gear"></i></a>
                                <button type="button" class="btn btn-outline-danger"><i class="bi bi-eye"></i></button>
                            </div>
                        </div>

                        <br />
                        <div class="row">
                            <table style="margin-left: 5%!important; width: 95%;">
                                <tbody>
                                    <tr>
                                        <td style="width: 5%;">
                                            <button type="button" class="btn btn-outline-secondary"><i class="bi bi-arrows-move"></i></button>
                                        </td>
                                        <td style="width: 5%;">
                                            <img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/core/1673254093/f/pdf-24" class="iconlarge activityicon" alt=" " role="presentation">
                                            <%--<i class="bi bi-filetype-pdf" style="font-size: 150%;"></i>--%>
                                        </td>
                                        <td class="pt-2">
                                            <a href="#" style="color: black;">
                                                <h5>Modul1_Pemrograman1</h5>
                                            </a>

                                        </td>
                                        <td style="width: 5%;">
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Edit syllabus name"><i class="bi bi-pencil-square"></i></button>
                                        </td>
                                        <td style="width: 8%;">
                                            <div class="dropdown">
                                                <button class="btn btn-link">Edit <i class="bi bi-caret-down-fill"></i></button>
                                                <div class="dropdown-content">
                                                    <a href="Edit_Card_Modul.aspx">Edit setting</a>
                                                    <a href="#">Hide</a>
                                                    <a href="#">Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <table style="margin-left: 5%!important; width: 95%;">
                                <tbody>
                                    <tr>
                                        <td style="width: 5%">
                                            <button type="button" class="btn btn-outline-secondary"><i class="bi bi-arrows-move"></i></button>

                                        </td>
                                        <td style="width: 5%">
                                            <img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                           <%-- <i class="bi bi-filetype-pdf" style="font-size: 150%;"></i>--%>
                                        </td>
                                        <td class="pt-2">
                                            <a href="Quiz_View.aspx" style="color: black;">
                                                <h5>Quiz_1</h5>
                                            </a>
                                        </td>
                                        <td style="width: 5%;">
                                            <button type="button" class="btn btn-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Edit syllabus name"><i class="bi bi-pencil-square"></i></button>
                                        </td>
                                        <td style="width: 8%;">
                                            <div class="dropdown">
                                                <button class="btn btn-link">Edit <i class="bi bi-caret-down-fill"></i></button>
                                                <div class="dropdown-content">
                                                    <a href="Edit_Card_Modul.aspx">Edit setting</a>
                                                    <a href="#">Hide</a>
                                                    <a href="#">Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer pt-2" style="text-align: right;">
                        <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#largeModal"><i class="bi bi-plus-lg"></i>Add an activity or resource</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="largeModal" tabindex="-1" <%--style="overflow-y: hidden; max-height: 95%;"--%>>
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add an activity or resource</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="card">
                                    <div class="card-body pt-3">
                                        <h6>ACTIVITIES</h6>

                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="QUIZ" value="QUIZ">
                                            <img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/quiz/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                            <label class="form-check-label" for="gridRadios1">
                                                QUIZ
                                            </label>
                                        </div>
                                        <br />
                                        <h6>RESOURCES</h6>

                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="File" value="FILE">
                                            <img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/core/1673254093/f/pdf-24" class="iconlarge activityicon" alt=" " role="presentation">
                                            <label class="form-check-label" for="gridRadios1">
                                                FILE
                                            </label>
                                        </div>
                                        <br />
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="URL" value="URL">
                                            <img src="https://elearning.polytechnic.astra.ac.id/theme/image.php/standard/url/1673254093/icon" class="iconlarge activityicon" alt=" " role="presentation">
                                            <label class="form-check-label" for="gridRadios1">
                                                URL
                                            </label>
                                        </div>
                                        <br />
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-9">

                                <div class="card" style="height:100%;">
                                    <%--<div class="wrapper" style="overflow-y:auto;">--%>
                                    <div class="card-body pt-3">
                                        <label id="labelket">Select a syllabus type to see its description</label>
                                    </div>
                                    <%--</div>--%>
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
    </main>
    <script>

        $(document).ready(function () {
            $('#URL').change(function () {
                var coba = document.getElementById("labelket");
                coba.innerHTML = `<p>The URL module enables a teacher to provide a web link as a course resource. Anything that is freely available online, such as documents or images, can be linked to; the URL doesn’t have to be the home page of a website. The URL of a particular web page may be copied and pasted or a teacher can use the file picker and choose a link from a repository such as Flickr, YouTube or Wikimedia (depending upon which repositories are enabled for the site).</p>
                <br/>
            <p>There are a number of display options for the URL, such as embedded or opening in a new window and advanced options for passing information, such as a students name, to the URL if required.</p>
                <br/>
            <p>Note that URLs can also be added to any other resource or activity type through the text editor.</p>`;
            });

            $('#File').change(function () {
                var coba = document.getElementById("labelket");
                coba.innerHTML = `<p>The quiz activity enables a teacher to create quizzes comprising questions of various types, including multiple choice, matching, short-answer and numerical.</p>
<br/>
<p>The teacher can allow the quiz to be attempted multiple times, with the questions shuffled or randomly selected from the question bank. A time limit may be set.</p>
<br/>
<p>Each attempt is marked automatically, with the exception of essay questions, and the grade is recorded in the gradebook.</p>
<br/>
<p>The teacher can choose when and if hints, feedback and correct answers are shown to students.</p>`;
            });

            $('#QUIZ').change(function () {
                var coba = document.getElementById("labelket");
                coba.innerHTML = `<p>The quiz activity enables a teacher to create quizzes comprising questions of various types, including multiple choice, matching, short-answer and numerical.</p>

<p>The teacher can allow the quiz to be attempted multiple times, with the questions shuffled or randomly selected from the question bank. A time limit may be set.</p>
<br/>
<p>Each attempt is marked automatically, with the exception of essay questions, and the grade is recorded in the gradebook.</p>
<br/>
<p>The teacher can choose when and if hints, feedback and correct answers are shown to students.</p>
<br/>
<p>Quizzes may be used</p>
<br/>
<p>As course exams</p>
<p>As mini tests for reading assignments or at the end of a topic</p>
<p>As exam practice using questions from past exams</p>
<p>To deliver immediate feedback about performance</p>
<p>For self-assessment</p>`;
            });

            $("#tambah").click(function () {
                var radioValue = $("input[name='gridRadios']:checked").val();
                if (radioValue == "URL") {
                    window.location.href = "Create_URL.aspx";
                } else if (radioValue == "QUIZ") {
                    window.location.href = "Create_Quiz.aspx";
                } else if (radioValue == "FILE") {
                    window.location.href = "Create_File.aspx";
                }
            });

        });
    </script>
</asp:Content>
