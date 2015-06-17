		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>Custom Calendar</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Templates</a></li>
					<li class="active">Custom Calendar</li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="parallax header-stick bottommargin-lg light" style="padding: 60px 0; background-image: url('images/alhuda/new-model7.png'); height: auto;" data-stellar-background-ratio="0.5">

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

										$('#clicked-month').html( dateProperties[ 'month' ] );
										$('#clicked-day').html( dateProperties[ 'day' ] );

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

					<strong>Clicked:</strong> Month: <span id="clicked-month"></span>, Day: <span id="clicked-day"></span>

				</div>

			</div>

		</section><!-- #content end -->