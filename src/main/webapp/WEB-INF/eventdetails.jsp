        <!-- Page Title
        ============================================= -->
        <section id="page-title">

            <div class="container clearfix">
                <h1>Al Huda Youth Program Presents: Jumuah</h1>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Events</a></li>
                    <li class="active">Event Details</li>
                </ol>
            </div>

        </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap">

                <div class="container clearfix">

                    <div class="single-event">

                        <div class="col_three_fourth">
                            <div class="entry-image nobottommargin">
                                
                                
                                
                                <div class="fslider" data-arrows="false" data-speed="400" data-pause="4000">
                                    <div class="flexslider">
                                        <div class="slider-wrap">                                            
                                            <div class="slide"><a href="event.html"><img src="${pageContext.request.contextPath}/images/alhuda/e4.jpg" alt="Morning Dew"></a></div>
                                            <div class="slide"><a href="event.html"><img src="${pageContext.request.contextPath}/images/alhuda/e4.jpg" alt="Morning Dew"></a></div>
                                            
                                        </div>
                                    </div>
                                </div>                                
                                
                                <div class="entry-overlay">
                                    <span class="hidden-xs">Starts in: </span><div id="event-countdown" class="countdown"></div>
                                </div>
                                <script>
                                    jQuery(document).ready( function($){
                                        var eventStartDate = new Date();
                                        eventStartDate = new Date(2015, 7, 31);
                                        $('#event-countdown').countdown({until: eventStartDate});
                                    });
                                </script>
                            </div>
                        </div>
                        <div class="col_one_fourth col_last">
                            <div class="panel panel-default events-meta">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Event Info:</h3>
                                </div>
                                <div class="panel-body">
                                    <ul class="iconlist nobottommargin">
                                        <li><i class="icon-calendar3"></i> 31st June, 2015</li>
                                        <li><i class="icon-time"></i> 20:00 - 02:00</li>
                                        <li><i class="icon-map-marker2"></i> Schaumburg </li>
                                        <li><i class="icon-euro"></i> <strong>9.99</strong></li>
                                    </ul>
                                </div>
                            </div>
                            
                        </div>

                        <div class="clear"></div>

                        <div class="col_three_fourth">

                            <h3>Details</h3>

                            <p>Suhaib Qudri has been actively involved with various youth groups and has spoken at many local and national events.</p>

                            <p>"The best day on which sunrises is Friday. On this day Adam was created, on this day he was entered into Paradise and on this day he was expelled from the Paradise. On this day the hour of judgement will
                            be established. Friday contains an hour during which no Muslim slave of Allah prays asking Allah for a good thing except that Allah will grant it to him." (Al-Tirmidhi)</p>

                            <h4>Inclusions</h4>

                            <div class="col_half nobottommargin">

                                <ul class="iconlist nobottommargin">
                                    <li><i class="icon-ok"></i> Baby Sitting</li>
                                    <li><i class="icon-ok"></i> Food</li>                                   
                                </ul>

                            </div>


                        </div>

                        <div class="col_one_fourth col_last">

                            <h4></h4>

                            <section id="event-location" class="gmap" style="height: 300px;"></section>

                            <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
                            <script type="text/javascript" src="js/jquery.gmap.js"></script>

                            <script type="text/javascript">

                                jQuery('#event-location').gMap({

                                    address: 'Ibiza, Spain',
                                    maptype: 'ROADMAP',
                                    zoom: 15,
                                    markers: [
                                        {
                                            address: "Ibiza, Spain"
                                        }
                                    ],
                                    doubleclickzoom: false,
                                    controls: {
                                        panControl: true,
                                        zoomControl: true,
                                        mapTypeControl: true,
                                        scaleControl: false,
                                        streetViewControl: false,
                                        overviewMapControl: false
                                    }

                                });

                            </script>

                        </div>

                        <div class="clear"></div>

                    </div>

                </div>

            </div>

        </section><!-- #content end -->