﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/Instructor.Master" AutoEventWireup="true" CodeBehind="sendmessage.aspx.cs" Inherits="OTeaching.Instructor.sendmessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="container-fluid" style="background-color:white; padding:20px">
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table class="table table-bordered" id="example">
                <thead>
                    <tr> 
                        <th>Student Username</th>
                        <th>Registration No.</th>
                        <th>Class Name</th>
                        <th>Section</th>
                        <th>Course Name</th>
                        <th>message</th>
                    </tr>
                </thead>
                <tbody>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <%#Eval("Student_Username")%>
                </td>
                <td>
                    <%#Eval("RegistrationNo")%>
                </td>
                <td>
                    <%#Eval("ClassName")%>
                </td>
                <td>
                    <%#Eval("Section")%>
                </td>
                <td>
                    <%#Eval("CourseName")%>
                </td>
                <td>
                    <a href="communication.aspx?username=<%#Eval("Student_Username")%>">Send Message</a>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </tbody>
            </table>
        </FooterTemplate>
    </asp:Repeater>
        </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                "pagingType": "full_numbers"
            });
        });
     </script>
</asp:Content>
