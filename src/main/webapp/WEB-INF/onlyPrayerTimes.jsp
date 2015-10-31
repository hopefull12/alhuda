<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

        <section id="prayer-times" class="force-full-screen full-screen" >

            <div class="content-wrap">

                <div class="container clearfix">
                
                	<div class="opt-container">
                	
                		<div class="opt-title">
                			<span class="opt-title-span">Daily Prayer Schedule</span>
                		</div>

                        <table class="table" id="prayertimegrid1">
                          <thead>
                            <tr>
                              <th></th>
                              <th><h3>Fajr</h3></th>
                              <th><h3>Sunrise</h3></th>
                              <th><h3>Dhuhr</h3></th>
                              <th><h3>Asr</h3></th>
                              <th><h3>Maghrib</h3></th>
                              <th><h3>Isha</h3></th>
                              <th><h3>Jumah 1</h3></th>
                              <th><h3>Jumah 2</h3></th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td><h4><span class="subtitle subtitle-font"><strong>Begins</strong></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.fajarTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.sunriseTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.dhuhrTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.asrTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.maghribTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.ishaTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah1Time}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah2Time}</h4></td>
                            </tr>
                            <tr class="active">
                              <td><h4><span class="subtitle subtitle-font"><strong>Iqama</strong></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.fajarIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle"></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.dhuhrIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.asrIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.maghribIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.ishaIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah1IqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah2IqamaTime}</span></h4></td>
                            </tr>
                            
                            <!-- 
                            <tr>
                            	<td colspan="3"></td>
                            	<td colspan="2" class="prayer-counter-title"><h4><span class="subtitle subtitle-font"><strong>Next prayer is in:</strong></span></h4> </td>
                            	<td colspan="1">
                            		<div id="countdown-ex3" class="countdown"></div>
                            	</td>
                            	<td colspan="3"></td>
                            </tr>
                             -->
                                         
                          </tbody>
                        </table>                                               	
                        <input id="prayerTimesData" type="hidden" value='${prayerTimesData}'>
                        
                        <!-- 
        				<div class="col_full text-right">
        					<div class="col_half">
        						Next prayer: 
        					</div>
        					<div class="col_half col_last divleft">
                        		<div id="countdown-ex3" class="countdown"></div>
                        	</div>       				
        		
        				</div>     
        				
        				 -->                   	
                        
						<script type="text/javascript">

						
						$(document).ready(function(){														
							
							 window.masjidData.ptplugin.slider();
							
							 $(window).resize(function(){
	
								  $('.opt-container').css({
								   position:'absolute',
								   left: ($(window).width() 
								     - $('.opt-container').outerWidth())/2,
								   top: ($(window).height() 
								     - $('.opt-container').outerHeight())/2
								  });
										
								 });
								 
							 // To initially run the function:
							 $(window).resize();							
					    
						});
				
						</script>
						         
					</div>
						
            	</div>

            </div>						

        </section>



        </section>
