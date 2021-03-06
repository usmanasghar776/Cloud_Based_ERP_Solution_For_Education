﻿<%@ Page Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="StudentReports.aspx.cs" Inherits="OTeaching.Student.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
     <div class="col-md-12">
        <div class="card">
            <form id="form2" runat="server">
                 <br />
    <h2>Student Reports</h2>
    <hr/>
            <%--Student Report panel--%>
            <asp:Panel ID="panel_studentreport" runat="server">
                <div class="card-body">
                    <div class="row form-group">
                         
                        <label class="col-md-2 col-form-label ">Enrolled Courses Report</label>
                        <div class="col-md-4">
                            <asp:Button ID="btn_enrolled_course" runat="server" Text="Export"  OnClick="btn_enrolled_courses_report_click"/>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Attendence Report</label>
                        <div class="col-md-9">
                            <asp:Button ID="Button1" runat="server" Text="Export" OnClick="btn_attendence_report_click"/>
                        </div>
                    </div>
                       <div class="row form-group">
                        <label class="col-md-2 col-form-label ">Result Report</label>
                        <div class="col-md-9">
                            <asp:Button ID="btn_result_report" runat="server" Text="Export" OnClick="btn_result_report_click"/>
                        </div>
                    </div>
                    
                </div>
            </asp:Panel>
            </form>
        </div>
    </div>
</asp:Content>
