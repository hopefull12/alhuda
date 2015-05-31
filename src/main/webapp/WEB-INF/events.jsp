<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

    <!-- Stylesheets
    ============================================= -->
	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" href="css/dark.css" type="text/css" />
    <link rel="stylesheet" href="css/font-icons.css" type="text/css" />
    <link rel="stylesheet" href="css/animate.css" type="text/css" />
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />
    <link rel="stylesheet" href="css/calendar.css" type="text/css" />

    <link rel="stylesheet" href="css/responsive.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

    <!-- External JavaScripts
    ============================================= -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/jquery.calendario.js"></script>
    <script type="text/javascript" src="js/events-data.js"></script>

    <!-- Document Title
    ============================================= -->
	<title>Events Calendar | Canvas</title>

</head>

<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

        <!-- Header
        ============================================= -->
        <header id="header" class="full-header">

            <div id="header-wrap">

                <div class="container clearfix">

                    <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

                    <!-- Logo
                    ============================================= -->
                    <div id="logo">
                        <a href="main.html" class="standard-logo" data-dark-logo="images/logo-dark.png"><img src="images/alhuda/logo.png" alt="AlHuda Logo"></a>
                        <a href="index.html" class="retina-logo" data-dark-logo="images/logo-dark@2x.png"><img src="images/logo@2x.png" alt="AlHuda Logo"></a>
                    </div><!-- #logo end -->

                    <!-- Primary Navigation
                    ============================================= -->
                    <nav id="primary-menu">

                        <ul>
                            <li class="current"><a href="main.html"><div>Home</div></a>
                            </li>
                            <li><a href="#"><div>About Us</div></a>
                                <ul>
                                    <li><a href="#"><div>Board of Turstees</div></a>

                                    </li>
                                    <li><a href="#"><div>Masjid Expansion</div></a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#"><div>Media</div></a>
                                <ul>
                                    <li><a href="#"><div>Audio Library</div></a>

                                    </li>
                                    <li><a href="videos.html"><div>Video Library</div></a>
                                    </li>
                                </ul>
                            </li>                            
                            <li><a href="#"><div>Prayer Times</div></a>
                            </li>      
                            <li><a href="#"><div>Donations</div></a>
                            </li> 
                            <li><a href="#"><div>Events</div></a>
                            </li>       
                            <li><a href="#"><div>Schools</div></a>
                                <ul>
                                    <li><a href="#"><div>Fulltime School</div></a>

                                    </li>
                                    <li><a href="#"><div>Sunday School</div></a>
                                    </li>
                                    <li><a href="#"><div>Hifz &amp; Nazara School</div></a>
                                    </li>                                    
                                </ul>
                            </li>
                            <li><a href="#"><div>Contact Us</div></a>
                            </li>                            
                        </ul>

                    </nav><!-- #primary-menu end -->

                </div>

            </div>

        </header><!-- #header end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap">

                <div class="parallax header-stick bottommargin-lg light" style="padding: 60px 0; background-image: url('images/alhuda/calbg3.jpg'); height: auto;" data-stellar-background-ratio="0.5">

                    <div class="container clearfix">

                        <div class="events-calendar">
                            <div class="events-calendar-header clearfix">
                                <h2>Events Overview</h2>
                                <h3 class="calendar-month-year">
                                    <span id="calendar-month" class="calendar-month"></span>
                                    <span id="calendar-year" class="calendar-year"></span>
                                    <nav>
                                        <span id="calendar-prev" class="calendar-prev"><i class="icon-chevron-left"></i></span>
                                        <span id="calendar-next" class="calendar-next"><i class="icon-chevron-right"></i></span>
                                        <span id="calendar-current" class="calendar-current" title="Got to current date"><i class="icon-reload"></i></span>
                                    </nav>
                                </h3>
                            </div>
                            <div id="calendar" class="fc-calendar-container"></div>
                        </div>

                        <script type="text/javascript">

                            var cal = $( '#calendar' ).calendario( {
                                    onDayClick : function( $el, $contentEl, dateProperties ) {

                                        for( var key in dateProperties ) {
                                            console.log( key + ' = ' + dateProperties[ key ] );
                                        }

                                    },
                                    caldata : canvasEvents
                                } ),
                                $month = $( '#calendar-month' ).html( cal.getMonthName() ),
                                $year = $( '#calendar-year' ).html( cal.getYear() );

                            $( '#calendar-next' ).on( 'click', function() {
                                cal.gotoNextMonth( updateMonthYear );
                            } );
                            $( '#calendar-prev' ).on( 'click', function() {
                                cal.gotoPreviousMonth( updateMonthYear );
                            } );
                            $( '#calendar-current' ).on( 'click', function() {
                                cal.gotoNow( updateMonthYear );
                            } );

                            function updateMonthYear() {
                                $month.html( cal.getMonthName() );
                                $year.html( cal.getYear() );
                            }

                        </script>

                    </div>

                </div>

                <div class="container clearfix">                    

                    <h3>Upcoming Events</h3>

                    <div id="posts" class="events small-thumbs">

                        <div class="entry clearfix">
                            <div class="entry-image">
                                <a href="#">
                                    <img src="images/alhuda/e1.jpg" alt="Inventore voluptates velit totam ipsa tenetur">
                                    <div class="entry-date">10<span>Apr</span></div>
                                </a>
                            </div>
                            <div class="entry-c">
                                <div class="entry-title">
                                    <h2><a href="#">Inventore voluptates velit totam ipsa tenetur</a></h2>
                                </div>
                                <ul class="entry-meta clearfix">
                                    <li><span class="label label-warning">Private</span></li>
                                    <li><a href="#"><i class="icon-time"></i> 11:00 - 19:00</a></li>
                                    <li><a href="#"><i class="icon-map-marker2"></i> Melbourne, Australia</a></li>
                                </ul>
                                <div class="entry-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga.</p>
                                    <a href="#" class="btn btn-default" disabled="disabled">Buy Tickets</a> <a href="#" class="btn btn-danger">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="entry clearfix">
                            <div class="entry-image">
                                <a href="#">
                                    <img src="images/alhuda/e2.jpg" alt="Nemo quaerat nam beatae iusto minima vel">
                                    <div class="entry-date">16<span>Apr</span></div>
                                </a>
                            </div>
                            <div class="entry-c">
                                <div class="entry-title">
                                    <h2><a href="#">Nemo quaerat nam beatae iusto minima vel</a></h2>
                                </div>
                                <ul class="entry-meta clearfix">
                                    <li><span class="label label-danger">Urgent</span></li>
                                    <li><a href="#"><i class="icon-time"></i> 11:00 - 19:00</a></li>
                                    <li><a href="#"><i class="icon-map-marker2"></i> Perth, Australia</a></li>
                                </ul>
                                <div class="entry-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga.</p>
                                    <a href="#" class="btn btn-info">RSVP</a> <a href="#" class="btn btn-danger">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="entry clearfix">
                            <div class="entry-image">
                                <a href="#">
                                    <img src="images/alhuda/e3.jpg" alt="Ducimus ipsam error fugiat harum recusandae">
                                    <div class="entry-date">3<span>May</span></div>
                                </a>
                            </div>
                            <div class="entry-c">
                                <div class="entry-title">
                                    <h2><a href="#">Ducimus ipsam error fugiat harum recusandae</a></h2>
                                </div>
                                <ul class="entry-meta clearfix">
                                    <li><span class="label label-info">Public</span></li>
                                    <li><a href="#"><i class="icon-time"></i> 11:00 - 19:00</a></li>
                                    <li><a href="#"><i class="icon-map-marker2"></i> Melbourne, Australia</a></li>
                                </ul>
                                <div class="entry-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga.</p>
                                    <a href="#" class="btn btn-default">Buy Tickets</a> <a href="#" class="btn btn-danger">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="entry clearfix">
                            <div class="entry-image">
                                <a href="#">
                                    <img src="images/alhuda/e4.jpg" alt="Nisi officia adipisci molestiae aliquam">
                                    <div class="entry-date">16<span>Jun</span></div>
                                </a>
                            </div>
                            <div class="entry-c">
                                <div class="entry-title">
                                    <h2><a href="#">Nisi officia adipisci molestiae aliquam</a></h2>
                                </div>
                                <ul class="entry-meta clearfix">
                                    <li><span class="label label-warning">Private</span></li>
                                    <li><a href="#"><i class="icon-time"></i> 12:00 - 18:00</a></li>
                                    <li><a href="#"><i class="icon-map-marker2"></i> New York</a></li>
                                </ul>
                                <div class="entry-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga.</p>
                                    <a href="#" class="btn btn-info">RSVP</a> <a href="#" class="btn btn-danger">Read More</a>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>

        </section><!-- #content end -->

        <!-- Footer
        ============================================= -->
        <footer id="footer" class="dark">

            <div class="container">

                <!-- Footer Widgets
                ============================================= -->
                <div class="footer-widgets-wrap clearfix">
                	
                	<div class="col_one_third">
                	
                        

                            <div class="widget clearfix">

                                <img src="images/alhuda/logo-footer.png" alt="" class="footer-logo">

                                <p>Welcome to the Sunday Islamic School at <strong>Masjid Al-Huda</strong>. Located in Schaumburg, Illinois, the school provides education in Islamic studies to students from Pre-Kindergarten through the 10th Grade. </p>

                            </div>

                                      	
                	
                	</div>

                    <div class="col_one_third">                     

                            <div class="widget clearfix">
                                <h4>Contact Us</h4>

                                <div style="background: url('images/world-map.png') no-repeat center center; background-size: 100%;">
                                    <address>
                                        <strong>Masjid AlHuda</strong><br>
                                        1081 Irving Park Road<br>
                                        Schaumburg, IL 60193<br>
                                    </address>
                                    <abbr title="Phone Number"><strong>Phone:</strong></abbr> (630) 529-1786<br>                                   
                                    <abbr title="Email Address"><strong>Email:</strong></abbr> masjid@masjidalhuda.org
                                </div>
                            </div>

                    </div>

                    <div class="col_one_third col_last">

                        <div class="widget subscribe-widget clearfix">
                            <h5><strong>Subscribe</strong> to Our Newsletter to get Important News &amp; Updates</h5>
                            <div id="widget-subscribe-form-result" data-notify-type="success" data-notify-msg=""></div>
                            <form id="widget-subscribe-form" action="include/subscribe.php" role="form" method="post" class="nobottommargin">
                                <div class="input-group divcenter">
                                    <span class="input-group-addon"><i class="icon-email2"></i></span>
                                    <input type="email" id="widget-subscribe-form-email" name="widget-subscribe-form-email" class="form-control required email" placeholder="Enter your Email">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit">Subscribe</button>
                                    </span>
                                </div>
                            </form>
                            <script type="text/javascript">
                                $("#widget-subscribe-form").validate({
                                    submitHandler: function(form) {
                                        $(form).find('.input-group-addon').find('.icon-email2').removeClass('icon-email2').addClass('icon-line-loader icon-spin');
                                        $(form).ajaxSubmit({
                                            target: '#widget-subscribe-form-result',
                                            success: function() {
                                                $(form).find('.input-group-addon').find('.icon-line-loader').removeClass('icon-line-loader icon-spin').addClass('icon-email2');
                                                $('#widget-subscribe-form').find('.form-control').val('');
                                                $('#widget-subscribe-form-result').attr('data-notify-msg', $('#widget-subscribe-form-result').html()).html('');
                                                SEMICOLON.widget.notifications($('#widget-subscribe-form-result'));
                                            }
                                        });
                                    }
                                });
                            </script>
                        </div>

                        <div class="widget clearfix" style="margin-bottom: -20px;">

                            <div class="row">

                                <div class="col-md-6 clearfix bottommargin-sm">
                                    <a href="#" class="social-icon si-dark si-colored si-facebook nobottommargin" style="margin-right: 10px;">
                                        <i class="icon-facebook"></i>
                                        <i class="icon-facebook"></i>
                                    </a>
                                    <a href="#"><small style="display: block; margin-top: 3px;"><strong>Like us</strong><br>on Facebook</small></a>
                                </div>
                     

                            </div>

                        </div>

                    </div>

                </div><!-- .footer-widgets-wrap end -->

            </div>

            <!-- Copyrights
            ============================================= -->
            <div id="copyrights">

                <div class="container clearfix">

                    <div class="col_half">
                        Copyrights &copy; 2014 All Rights Reserved by Masjid Al Huda.<br>
                        <div class="copyright-links"><a href="#">Terms of Use</a> / <a href="#">Privacy Policy</a></div>
                    </div>

                    <div class="col_half col_last tright">
                        <div class="fright clearfix">
                            <a href="#" class="social-icon si-small si-borderless si-facebook">
                                <i class="icon-facebook"></i>
                                <i class="icon-facebook"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-gplus">
                                <i class="icon-gplus"></i>
                                <i class="icon-gplus"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-pinterest">
                                <i class="icon-pinterest"></i>
                                <i class="icon-pinterest"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-vimeo">
                                <i class="icon-vimeo"></i>
                                <i class="icon-vimeo"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-github">
                                <i class="icon-github"></i>
                                <i class="icon-github"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-yahoo">
                                <i class="icon-yahoo"></i>
                                <i class="icon-yahoo"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless si-linkedin">
                                <i class="icon-linkedin"></i>
                                <i class="icon-linkedin"></i>
                            </a>
                        </div>

                        <div class="clear"></div>

                        <i class="icon-envelope2"></i> masjid@masjidalhuda.org <span class="middot">&middot;</span> <i class="icon-headphones"></i> (630) 529-1786
                    </div>

                </div>

            </div><!-- #copyrights end -->

        </footer><!-- #footer end -->

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="js/functions.js"></script>

</body>
</html>