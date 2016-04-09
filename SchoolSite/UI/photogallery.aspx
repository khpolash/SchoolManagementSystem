<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="photogallery.aspx.cs" Inherits="SchoolSite.UI.photogallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="container">
        <div class="page-title clearfix">
            <div class="row">
                <div class="col-md-12">
                    <h6><a href="index.aspx">প্রথম পাতা</a></h6>
                    <h6><span class="page-active">ফটো গ্যালারি</span></h6>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">

            <div class="col-md-3">
                <div class="widget-main">
                    <div class="widget-inner">
                        <div class="search-form-widget">
                            <form name="search_form" method="get" action="#" class="search_form">
                            <input type="text" name="s" placeholder="Type and click enter to search..." title="Type and click enter to search..." class="field_search" />
                            </form>
                       
                        </div>
                    </div>
                    <!-- /.widget-inner -->
                </div>
                <!-- /.widget-main -->

                <div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Filter Controls</h4>
                    </div>
                    <div class="widget-inner">
                        <ul class="mixitup-controls">
                            <li class="filter" data-filter="all">Show All</li>
                            <li class="filter" data-filter="students">Students Learning</li>
                            <li class="filter" data-filter="campus">Campus Images</li>
                            <li class="filter" data-filter="nature">Nature Of University</li>
                            <li class="filter" data-filter="travel">Traveling with Teachers</li>
                        </ul>
                    </div>
                    <!-- /.widget-inner -->
                </div>
                <!-- /.widget-main -->

                <div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Sort Controls</h4>
                    </div>
                    <div class="widget-inner">
                        <ul class="mixitup-controls">
                            <li class="sort active" data-sort="default" data-order="desc">Default</li>
                            <li class="sort" data-sort="data-cat" data-order="asc">Ascending</li>
                            <li class="sort" data-sort="data-cat" data-order="desc">Descending</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="row">

                    <div id="Grid">


                        <div class="col-md-4 mix students" data-cat="3">
                            <div class="gallery-item">
                                <a class="fancybox" rel="gallery1" href="../images/gallery/gallery1.jpg">
                                    <div class="gallery-thumb">
                                        <img src="../images/gallery/gallery-thumb1.jpg" alt="" />
                                    </div>
                                    <div class="gallery-content">
                                        <h4 class="gallery-title">2014 Faculty Biennial</h4>
                                        <p class="small-text">Featuring painting, sculpture, ceramics</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4 mix campus" data-cat="1">
                            <div class="gallery-item">
                                <a class="fancybox" rel="gallery1" href="../images/gallery/gallery3.jpg">
                                    <div class="gallery-thumb">
                                        <img src="../images/gallery/gallery-thumb2.jpg" alt="" />
                                    </div>
                                    <div class="gallery-content">
                                        <h4 class="gallery-title">Contemporary Southeastern Art</h4>
                                        <p class="small-text">January 26 - March 8, 2008</p>
                                    </div>
                                </a>
                            </div>
                            <!-- /.gallery-item -->
                        </div>
                        <!-- /.col-md-4 -->

                        <div class="col-md-4 mix nature" data-cat="2">
                            <div class="gallery-item">
                                <a class="fancybox" rel="gallery1" href="../images/gallery/gallery5.jpg">
                                    <div class="gallery-thumb">
                                        <img src="../images/gallery/gallery-thumb3.jpg" alt="" />
                                    </div>
                                    <div class="gallery-content">
                                        <h4 class="gallery-title">Juried Student Exhibition</h4>
                                        <p class="small-text">Lorem ipsum sit amet, consectetur elit.</p>
                                    </div>
                                </a>
                            </div>
                            <!-- /.gallery-item -->
                        </div>
                        <!-- /.col-md-4 -->

                        <div class="col-md-4 mix campus" data-cat="2">
                            <div class="gallery-item">
                                <a class="fancybox" rel="gallery1" href="../images/gallery/gallery6.jpg">
                                    <div class="gallery-thumb">
                                        <img src="../images/gallery/gallery-thumb4.jpg" alt="" />
                                    </div>
                                    <div class="gallery-content">
                                        <h4 class="gallery-title">Game Changer II</h4>
                                        <p class="small-text">Paintings and Sculpture forms.</p>
                                    </div>
                                </a>
                            </div>
                            <!-- /.gallery-item -->
                        </div>
                        <!-- /.col-md-4 -->

                        <div class="col-md-4 mix travel" data-cat="3">
                            <div class="gallery-item">
                                <a class="fancybox" rel="gallery1" href="../images/gallery/gallery7.jpg">
                                    <div class="gallery-thumb">
                                        <img src="../images/gallery/gallery-thumb5.jpg" alt="" />
                                    </div>
                                    <div class="gallery-content">
                                        <h4 class="gallery-title">Beauty of Bucknell</h4>
                                        <p class="small-text">Lorem ipsum sit amet, consectetur elit.</p>
                                    </div>
                                </a>
                            </div>
                            <!-- /.gallery-item -->
                        </div>
                        <!-- /.col-md-4 -->

                        <div class="col-md-4 mix students" data-cat="2">
                            <div class="gallery-item">
                                <a class="fancybox" rel="gallery1" href="../images/gallery/gallery4.jpg">
                                    <div class="gallery-thumb">
                                        <img src="../images/gallery/gallery-thumb6.jpg" alt="" />
                                    </div>
                                    <div class="gallery-content">
                                        <h4 class="gallery-title">Royal Fort House</h4>
                                        <p class="small-text">University Institute for Advanced Studies.</p>
                                    </div>
                                </a>
                            </div>
                            <!-- /.gallery-item -->
                        </div>
                        <!-- /.col-md-4 -->

                    </div>
                    <!-- /#Grid -->

                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="load-more-btn">
                            <a href="#">Load more images</a>
                        </div>
                    </div>
                    <!-- /.col-md-12 -->
                </div>
                <!-- /.row -->

            </div>
            <!-- /.col-md-9 -->

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
</asp:Content>
