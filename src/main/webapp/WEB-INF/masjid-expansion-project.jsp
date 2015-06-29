<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
      
      
        <section id="slider" class="force-full-screen full-screen nomarginbottom">

                <div class="section parallax full-screen nomargin noborder" style="background-image: url('<spring:eval expression="@environment.getProperty('alhuda.images')" />expansion/alhuda-vision5.jpg');" data-stellar-background-ratio="0.4">
                    <div class="vertical-middle">
                        <div class="container clearfix">

                            <div class="col_three_fifth nobottommargin">

                                <div class="emphasis-title">
                                    <h2>Building now for a better tomorrow</h2>
                                    <p class="lead topmargin-sm">Masjid Al Huda Expansion Project</p>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
                
                 

        </section>		


        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap">	                	             	                            
	                
	                <div class="container clearfix">
	                
	                
		                <div class="col-md-12 nopadding common-height bottommargin">
		
		                    <div class="col-md-6 dark col-padding ohidden" style="background-color: #1abc9c;">
		                        <div>
		                            <h3 class="uppercase" style="font-weight: 600;">Our Objective</h3>
		                            <p style="line-height: 1.8;">Develop a plan and raise funds towards an expansion project for the midwest center in preparation for 
		                            growing and dynamic muslim community.</p>
		                            
		                            <i class="icon-bulb bgicon"></i>
		                        </div>
		                    </div>
		
		                    <div class="col-md-6 dark col-padding ohidden" style="background-color: #e74c3c;">
		                        <div>
		                            <h3 class="uppercase" style="font-weight: 600;">Our Vision</h3>
		                            <p style="line-height: 1.8;">To provide the best facilities and services for our community so that they can become facilitators
		                            towards aiding and shaping the Islamic landscape in the US. </p>
		                            
		                            <i class="icon-thumbs-up bgicon"></i>
		                        </div>
		                    </div>
		
		                    <div class="clear"></div>
		
		                </div> 	                
	                
	                    <div id="section-gallery" class="heading-block center topmargin page-section">
	                        <h2>Masjid Al Huda New Model Gallery</h2>                        
	                    </div>
	
	                    <div class="fslider flex-thumb-grid grid-12 bottommargin-lg" data-pagi="false" data-arrows="false" data-thumbs="true">
	                        <div class="flexslider">
	                            <div class="slider-wrap">
	                                <div class="slide" data-thumb="<spring:eval expression="@environment.getProperty('alhuda.images')" />expansion/alhuda-vision1-t.jpg"><img src="<spring:eval expression="@environment.getProperty('alhuda.images')" />expansion/alhuda-vision1.jpg" alt="Image"></div>
	                                <div class="slide" data-thumb="<spring:eval expression="@environment.getProperty('alhuda.images')" />expansion/alhuda-vision2-t.jpg"><img src="<spring:eval expression="@environment.getProperty('alhuda.images')" />expansion/alhuda-vision2.jpg" alt="Image"></div>
	                                <div class="slide" data-thumb="<spring:eval expression="@environment.getProperty('alhuda.images')" />expansion/alhuda-vision3-t.jpg"><img src="<spring:eval expression="@environment.getProperty('alhuda.images')" />expansion/alhuda-vision3.jpg" alt="Image"></div>
	                            </div>
	                        </div>
	                    </div>            
	                    
	                      
	                    <div id="section-gallery" class="heading-block center topmargin page-section">
	                        <h2>Featured Videos</h2>                        
	                    </div>                 
	                
	                    <!-- Portfolio Items
	                    ============================================= -->
	                    <div id="portfolio" class="portfolio-2 clearfix">
	
	
	                        <article class="portfolio-item pf-graphics pf-uielements">
	                            <div class="portfolio-image">
	                                <a href="#">
	                                    <iframe width="800" height="600" src="https://www.youtube.com/embed/9dBUEfoLsg0?rel=0" frameborder="0" allowfullscreen></iframe>
	                                </a>
	
	                            </div>
	                            <div class="portfolio-desc">
	                                <h3><a href="portfolio-single-video.html">Passionate Message</a></h3>
	                                <span>Alhuda Co Founders</span>
	                            </div>
	                        </article>
	
	                        <article class="portfolio-item pf-graphics pf-uielements">
	                            <div class="portfolio-image">
	                                <a href="#">                                    
	                                    <iframe width="800" height="600" src="https://www.youtube.com/embed/X1iIK9VBoVY?rel=0" frameborder="0" allowfullscreen></iframe>
	                                </a>
	
	                            </div>
	                            <div class="portfolio-desc">
	                                <h3><a href="portfolio-single-video.html">Masjid Alhuda Expansion Project</a></h3>
	                                <span>Virtual Tour</span>
	                            </div>
	                        </article>
	
	                    </div><!-- #portfolio end -->
	
	                    <!-- Portfolio Script
	                    ============================================= -->
	                    <script type="text/javascript">
	
	                        jQuery(window).load(function(){
	
	                            var $container = $('#portfolio');
	
	                            $container.isotope({ transitionDuration: '0.65s' });
	
	                            $('#portfolio-filter a').click(function(){
	                                $('#portfolio-filter li').removeClass('activeFilter');
	                                $(this).parent('li').addClass('activeFilter');
	                                var selector = $(this).attr('data-filter');
	                                $container.isotope({ filter: selector });
	                                return false;
	                            });
	
	                            $('#portfolio-shuffle').click(function(){
	                                $container.isotope('updateSortData').isotope({
	                                    sortBy: 'random'
	                                });
	                            });
	
	                            $(window).resize(function() {
	                                $container.isotope('layout');
	                            });
	
	                        });
	
	                    </script><!-- Portfolio Script End -->                                                                                     
	                    
	                    <div class="clear"></div>         	                                          
                    </div>   
	                                     
	                
	                <div class="clear"></div>
	                
                <div class="promo promo-dark promo-full promo-uppercase promo-center bottommargin topmargin">
                    <div class="container clearfix">
                        <h3>SUPPORT THE <span>NOBLE</span> CAUSE!</h3>
                        <span></span>
                        <a href="donate.html" class="button button-xlarge button-rounded">Donate Now</a>
                    </div>
                </div>	        
             
	
	            
            </div>

        </section><!-- #content end -->