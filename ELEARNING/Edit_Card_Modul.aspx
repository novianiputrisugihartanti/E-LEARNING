<%@ Page Title="" Language="C#" MasterPageFile="~/SiteDosen.Master" AutoEventWireup="true" CodeBehind="Edit_Card_Modul.aspx.cs" Inherits="ELEARNING.Edit_Card_Modul" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <center>
                        <h5 class="card-title">Summary of 1 January - 3 January 203 </h5>
                    </center>
                    <br />
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Section name</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control">
                        </div>
                        <div class="col-sm-5">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck1">
                                <label class="form-check-label" for="gridCheck1">
                                    Use default section name
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Summary</label>
                        <div class="col-sm-10">
                            <textarea id="w3review" name="w3review" rows="4" class="form-control" cols="50">
</textarea>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label"></label>
                        <div class="col-sm-10">
                            <button type="button" class="btn btn-primary">Save changes</button>&nbsp;
                                                <a href="Modul_List.aspx" class="btn btn-secondary">Cancel</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
