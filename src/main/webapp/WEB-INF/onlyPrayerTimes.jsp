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
                              <td><h4><span class="subtitle">${dailySchedule.fajarBeginTime}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.sunriseTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.dhuhrTIme}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.asrTime}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.maghribTIme}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.ishaTIme}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah1Time}</h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.jumah2Time}</h4></td>
                            </tr>
                            <tr class="active">
                              <td><h4><span class="subtitle subtitle-font"><strong>Iqama</strong></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.fajarIqamaTime}</span></h4></td>
                              <td><h4><span class="subtitle"></span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.dhuhrIqamaTIme}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.asrIqamaTIme}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.maghribIqamaTIme}</span></h4></td>
                              <td><h4><span class="subtitle">${dailySchedule.ishaIqamaTIme}</span></h4></td>
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
						
						function setPrayerTimes(){
							
							//Central time offset in hours
							var offset = 5;
						    // create Date object for current location						    
						    var now = new Date();
							//get offset relative to the UTC/GMT time
						    var localOffset = now.getTimezoneOffset() * 60000;
							//Convert current time to UTC time by adding the offset
						    var utc = now.getTime() + localOffset;
	
						    // create new Date object for different city using supplied offset						    
						    var currentCST = new Date(utc - (3600000*offset));
						    
						    var cstHour = currentCST.getHours();
						    var cstMinute = currentCST.getMinutes();
						    
						    //the current prayer will remain highlighted for sometime even though the prayer has started
						    var delayRefresh =  30 * 60 * 1000;
						    
						    var prayerTimes = [];
						    
						    now.setHours(0,0,0,0);
						    var year = now.getFullYear(), month = now.getMonth(), day = now.getDate();
						    var strNow = (month+1) + "/" + day + "/" + year;
						    var nextPrayerIndex = 0;
						    var nextPrayerTime, nextPrayerIsIn;
						    $('#prayertimegrid1 tr:eq(2) td').each(function(index, element){						    							    	
						    	var text = $(this).find('span').text();
						    	if(!(index == 0 || index == 2 || (currentCST.getDay() == 5 && index == 3) || (currentCST.getDay() != 5 && (index == 7 || index == 8)) )){
						    		var pd = new Date(strNow + " " + text);
						    		prayerTimes[prayerTimes.length] = pd;
						    	}
						    });
						    
						    prayerTimes.sort();
						    
						    $(prayerTimes).each(function(index, element){										    		
					    		if(this.getTime() > currentCST.getTime()){
					    			nextPrayerIndex = index;
					    			nextPrayerTime = this.getTime();
					    			nextPrayerIsIn = this.getTime() - currentCST.getTime();
					    			return false;
					    		}						    	
						    });
						    
						    //two columns were excluded earlier, so adding +2
						    var tableIndex = 0;
						    var secondTableIndex = 0;
						    
						    if(nextPrayerIndex == 0){
						    	tableIndex = nextPrayerIndex + 1;
						    	secondTableIndex = nextPrayerIndex + 1;
						    } else {
						    	tableIndex = nextPrayerIndex + 2;
						    	tableIndex = nextPrayerIndex + 2;
						    	secondTableIndex = nextPrayerIndex + 2;
						    }
						    
						    if(currentCST.getDay() == 5){
						    	
						    	if(nextPrayerIndex == 1 || nextPrayerIndex == 2){
						    		tableIndex = nextPrayerIndex + 6;
						    		secondTableIndex = nextPrayerIndex + 6;
						    	} 
						    }						    						    
						    
						    //remove current high lighted prayer in table 1
						    $('#prayertimegrid1 tr th').removeClass("nextprayer");
						    $('#prayertimegrid1 tr td').removeClass("nextprayer");
						    						    
						    //apply css to the next prayer in table 1
						    $('#prayertimegrid1 tr:eq(0) th:eq('+tableIndex+")").addClass("nextprayer");
						    $('#prayertimegrid1 tr:eq(1) td:eq('+tableIndex+")").addClass("nextprayer");
						    $('#prayertimegrid1 tr:eq(2) td:eq('+tableIndex+")").addClass("nextprayer");	
						    
						    //remove current high lighted prayer in table 2
						    $('#prayertimegrid2 tr th').removeClass("nextprayer");
						    $('#prayertimegrid2 tr td').removeClass("nextprayer");	
						    
						    //$('#prayertimegrid2 tr:eq(0) th').addClass("nextprayer");
						    
						    //apply css to the next prayer in table 2
						    $('#prayertimegrid2 tr:eq('+secondTableIndex+") th").addClass("nextprayer");
						    $('#prayertimegrid2 tr:eq('+secondTableIndex+") td").addClass("nextprayer");					
						    
                            var newDate = new Date(nextPrayerTime);
                            $('#countdown-ex3').countdown({until: newDate});
                            $('#countdown-ex2').countdown({until: newDate});
                            
                            nextPrayerIsIn = nextPrayerIsIn + delayRefresh;
						    						    						    
						    return nextPrayerIsIn;
							
						}
						
						$(document).ready(function(){														
							
							var nextPrayerInTime = setPrayerTimes();
							setTimeout(function(){setPrayerTimes()},nextPrayerInTime);
							
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
