<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	
		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>Media Library</h1>				
				
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">
				<!-- Portfolio Items
				============================================= -->
                     <div id="portfolio" class="portfolio-4 clearfix">

						<c:forEach var="item" items="${mediaItems}">
	                       
	                        
                        <article class="portfolio-item pf-media pf-icons">
                            <div class="portfolio-image">
								<iframe width="276" height="207" src="${item['name']}" frameborder="0" allowfullscreen></iframe>
                            </div>
                            <div class="portfolio-desc">
                                <h3><a href="portfolio-single.html">Structure of Masjid</a></h3>
                                <span>5/17/2015</span>
                            </div>
                        </article>                        
	                        
                        </c:forEach>  

                       
                     </div><!-- #portfolio end --><!-- #portfolio end -->
	
					<!-- Pagination
					============================================= -->
					<div id="load-next-posts" class="center">
						<a href="${pageContext.request.contextPath}/audio?itemType=MEDIA_VIDEO&page=2&size=4" class="button button-full button-dark button-rounded">Load more...</a>
					</div>
				</div>

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

						$container.infinitescroll({
							loading: {
								finishedMsg: '<i class="icon-line-check"></i>',
								msgText: '<i class="icon-line-loader icon-spin"></i>',
								img: "images/preloader-dark.gif",
								speed: 'normal'
							},
							state: {
								isDone: false
							},
							nextSelector: "#load-next-posts a",
							navSelector: "#load-next-posts",
							itemSelector: "article.portfolio-item",
							behavior: 'portfolioinfiniteitemsloader'
						},
						function( newElements ) {
							$container.isotope( 'appended', $( newElements ) );
							var t = setTimeout( function(){ $container.isotope('layout'); }, 2000 );
							SEMICOLON.widget.loadFlexSlider();
							SEMICOLON.portfolio.arrange();
						});

					});

				</script><!-- Portfolio Script End -->

			</div>

		</section><!-- #content end -->