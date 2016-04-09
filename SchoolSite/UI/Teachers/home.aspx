<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Teachers/TeacherSite.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="SchoolSite.UI.Teachers.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <section class="content-header">
        <div class="row">
            <div class="col-md-12" style="text-align: center;">
                <h2>Saidpur Cantonment Board High School</h2>
            </div>
            <div class="col-md-12">
                <h1><small>Teacher's Control panel</small></h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                    <li class="active">Dashboard</li>
                </ol>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <section class="col-lg-8 connectedSortable">

                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-body no-padding">
                            <div id="calendar"></div>
                        </div>
                    </div>
                </div>

            </section>

            <section class="col-lg-4 connectedSortable">
                 <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title"><i class="ion ion-clock"></i>Date & Time</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="box-body small-box bg-green">
                        <div class="inner">
                            <h3>44</h3>
                            <p>User Registrations</p>
                        </div>
                        
                    </div>
                </div>
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>150</h3>
                        <p>New Orders</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>

                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>53<sup style="font-size: 20px">%</sup></h3>
                        <p>Bounce Rate</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>


                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>44</h3>
                        <p>User Registrations</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person-add"></i>
                    </div>

                </div>              
            </section>

            <section class="col-lg-12  connectedSortable">
                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h4 class="box-title">My Class Schedule</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-responsive">
                            <tbody>
                                <tr>
                                    <th width="100">Monday</th>
                                    <td>
                                        <button class="btn btn-primary"><span id="1" class="period_box">Maths<span class="time"> (8:15:am- 9:0:am) </span><span>Five</span></span></button>
                                    </td>
                                </tr>
                                <tr>
                                    <th width="100">Tuesday</th>
                                    <td>
                                        <button class="btn btn-primary"><span id="5" class="period_box">Maths<span class="time"> (9:10:am- 10:0:am) </span><span>Five</span></span></button>
                                    </td>
                                </tr>
                                <tr>
                                    <th width="100">Wednesday</th>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th width="100">Thursday</th>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th width="100">Friday</th>
                                    <td>
                                        <button class="btn btn-primary"><span id="7" class="period_box">Maths<span class="time"> (9:10:am- 9:50:am) </span><span>Five</span></span></button>
                                    </td>
                                </tr>
                                <tr>
                                    <th width="100">Saturday</th>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th width="100">Sunday</th>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
        </div>
    </section>

    <script src="../../Scripts/jquery-2.2.0.min.js"></script>
    <script src="../../plugins/fullcalendar/fullcalendar.min.js"></script>
    <script>
        $(function () {
            var date = new Date();
            var d = date.getDate(),
                    m = date.getMonth(),
                    y = date.getFullYear();
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                buttonText: {
                    today: 'today',
                    month: 'month',
                    week: 'week',
                    day: 'day'
                },
            });
        });
    </script>
</asp:Content>
