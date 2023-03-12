<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Export_Question_Bank.aspx.cs" Inherits="ELEARNING.Export_Question_Bank" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Export question to file</h5>


                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingOne">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                    File format
                                </button>
                            </h2>
                            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <div class="row mb-3">
                                        <%-- <label for="inputText" class="col-sm-1"><i class="bi bi-question-circle"></i></label>--%>
                                        <div class="col-sm-12">

                                            <div class="form-check form-control" style="border:none;">
                                                <input class="form-check-input" type="radio" name="gridRadios" id="Assignment">
                                                <label class="form-check-label" for="gridRadios1">
                                                    Gift format
                                                </label>
                                            </div>
                                            <div class="form-check form-control" style="border:none;">
                                                <input class="form-check-input" type="radio" name="gridRadios" id="Assignment">
                                                <label class="form-check-label" for="gridRadios1">
                                                    Microsoft Word 2010 table format (wordtable)
                                                </label>
                                            </div>
                                            <div class="form-check form-control" style="border:none;">
                                                <input class="form-check-input" type="radio" name="gridRadios" id="Assignment">
                                                <label class="form-check-label" for="gridRadios1">
                                                    Moodle XML format
                                                </label>
                                            </div>
                                            <div class="form-check form-control" style="border:none;">
                                                <input class="form-check-input" type="radio" name="gridRadios" id="Assignment">
                                                <label class="form-check-label" for="gridRadios1">
                                                    XHTML format
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                        General
                                    </button>
                                </h2>
                                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label">Import category</label>
                                            <div class="col-sm-10">
                                                <select class="form-select">

                                                    <option style="height: 200%;" selected>Default for MI_2C_2022/2023_Pemrograman I</option>
                                                    <option style="height: 20%;" value="1">Ado.Net & Store Procedure (20)</option>
                                                    <option  value="2">Arsitektur Wweb & HTML (40)</option>
                                                    <option   value="3">Validation & User Control (29)</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label"></label>
                                            <div class="col-sm-5">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label class="form-check-label" for="gridCheck1">
                                                        Write category to file
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                    <label class="form-check-label" for="gridCheck1">
                                                        Write context to file
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="inputText" class="col-sm-2 col-form-label"></label>
                                            <div class="col-sm-10">
                                                <button type="button" class="btn btn-primary">Export question to file</button>
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
    </main>
</asp:Content>
