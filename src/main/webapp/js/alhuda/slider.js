(function () {


    window.masjidData = {
        ptplugin : {}
    };

    var pp = window.masjidData.ptplugin;
    pp.logging = arguments[1];
    pp.previousPrayer = null;
    pp.nextPrayer = "";

    var clientOffset = -5;
    var dataRefreshFrequency = arguments[0];


    var now, dayOfTheWeek, nowWithOutTime, nowWithoutTimeStr, todayData, lastDayOfTheCurrentMonth = null;

    function init(){
        now = clientDate(new Date(), clientOffset);
        dayOfTheWeek = now.getDay();        
        nowWithoutTimeStr = (now.getMonth() + 1)+"/"+now.getDate()+"/"+now.getFullYear();
        
        today = new Date(now.getFullYear(), now.getMonth(), now.getDate());
        tomorrow = new Date(today.getDate()+1);
        
        //a unique js way of getting the last day of the month by passing a 0 for the day; in js first day of the
        //month is 1 so 0 is the last day of the previous month
        lastDayOfTheCurrentMonth =    (new Date(now.getFullYear(), now.getMonth() + 1, 0)).getDate();
    }

    //Utility function Converts any date to a date basing on client timezone
    function clientDate(date, offset) {

        // create Date object for current location
        //d = new Date(dateStr);

        // convert to msec, add local time zone offset, get UTC time in msec
        var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000);

        // create new Date object for different city, using supplied offset
        nd = new Date(utc + (3600000*offset));
        return nd;
    }

    function log(msg){
        if(pp.logging) {
            console.log(msg);
        }
    }

    function loadPluginData(){
        
    	log("Data loading is done only after isha prayer");       
        //if(pp.previousPrayer === "isha"){
        	
        	//load next days or next months data 
        	//http://www.yahibaba.com/madmin/prayerTimes?fromDate=10/01/2015&toDate=10/31/2015
        		
 	            pp.ptData =[{"fajarTime":"5:37  AM","fajarIqamaTime":"6:15  AM","fajarBufferTime":"30","sunriseTime":"7:13  AM","dhuhrTime":"12:37  PM","dhuhrIqamaTime":"1:30  PM","dhuhrBufferTime":"60","asrTime":"4:17  PM","asrIqamaTime":"4:30  PM","asrBufferTime":"45","maghribTime":"6:00  PM","maghribIqamaTime":"6:00  PM","maghribBufferTime":"30","ishaTime":"7:17  PM","ishaIqamaTime":"8:00  PM","ishaBufferTime":"120","date":"10/22/2015","jumah1Time":"1:00 PM","jumah1IqamaTime":"1:30 PM","jumah1BufferTime":"20","jumah2Time":"2:00 PM","jumah2IqamaTime":"2:30 PM","jumah2BufferTime":"60"}];
      //  }

        for(var i=0; i<pp.ptData.length; i++){
        	if(nowWithoutTimeStr === pp.ptData[i].date){
        		todayData = pp.ptData[i];
        		break;
        	}
        }
        
        log("Done loading Plugin Date");
       
    }

    function buildPrayerList(){

        //Sunday is 0, Monday is 1, and so on

        log("Building Prayer List");
        pp.allPrayerList = ["fajar","dhuhr", "asr","maghrib","isha","jumah1","jumah2"];     
        
        pp.gridConfig = {
        		columns: ["fajar","sunrise","dhuhr", "asr","maghrib","isha","jumah1","jumah2"],
        		fajar : {
        			"lg-pt-col" : 1,
        			"lg-pt-row" : 1,
        			"lg-iq-col" : 1,
        			"lg-iq-row" : 2,
        			"sm-pt-col" : 1,
        			"sm-pt-row" : 1,
        			"sm-iq-col" : 2,
        			"sm-iq-row" : 1 
        		},
        		sunrise : {
        			"lg-pt-col" : 2,
        			"lg-pt-row" : 1,
        			"lg-iq-col" : 2,
        			"lg-iq-row" : 2,        			
        			"sm-pt-col" : 1,
        			"sm-pt-row" : 2,
        			"sm-iq-col" : 2,
        			"sm-iq-row" : 2
        		} ,        		
        		dhuhr : {
        			"lg-pt-col" : 3,
        			"lg-pt-row" : 1,
        			"lg-iq-col" : 3,
        			"lg-iq-row" : 2,        			
        			"sm-pt-col" : 1,
        			"sm-pt-row" : 3,
        			"sm-iq-col" : 2,
        			"sm-iq-row" : 3
        		} ,
        		asr : {
        			"lg-pt-col" : 4,
        			"lg-pt-row" : 1,
        			"lg-iq-col" : 4,
        			"lg-iq-row" : 2,        			
        			"sm-pt-col" : 1,
        			"sm-pt-row" : 4,
        			"sm-iq-col" : 2,
        			"sm-iq-row" : 4
        		},
        		maghrib : {
        			"lg-pt-col" : 5,
        			"lg-pt-row" : 1,
        			"lg-iq-col" : 5,
        			"lg-iq-row" : 2,        			
        			"sm-pt-col" : 1,
        			"sm-pt-row" : 5,
        			"sm-iq-col" : 2,
        			"sm-iq-row" : 5
        		} ,
        		isha : {
        			"lg-pt-col" : 6,
        			"lg-pt-row" : 1,
        			"lg-iq-col" : 6,
        			"lg-iq-row" : 2,        			
        			"sm-pt-col" : 1,
        			"sm-pt-row" : 6,
        			"sm-iq-col" : 2,
        			"sm-iq-row" : 6
        		},
        		jumah1 : {
        			"lg-pt-col" : 7,
        			"lg-pt-row" : 1,
        			"lg-iq-col" : 7,
        			"lg-iq-row" : 2,        			
        			"sm-pt-col" : 1,
        			"sm-pt-row" : 7,
        			"sm-iq-col" : 2,
        			"sm-iq-row" : 7
        		},
        		jumah2 : {
        			"lg-pt-col" : 8,
        			"lg-pt-row" : 1,
        			"lg-iq-col" : 8,
        			"lg-iq-row" : 2,        			
        			"sm-pt-col" : 1,
        			"sm-pt-row" : 8,
        			"sm-iq-col" : 2,
        			"sm-iq-row" : 8
        		}        		
        }
        
        if(dayOfTheWeek === 5){
            pp.prayerList = ["fajar","jumah1","jumah2", "asr","maghrib","isha"];            
        } else {
            pp.prayerList = ["fajar","dhuhr", "asr","maghrib","isha"];
        }
        log("Done building prayer list");
    }
    
    function populatePrayerScheduleGrid(){
    	
    	var prayerRow=1, prayerCol=0;
    	//var todayData = pp.ptData[nowWithoutTimeStr];
    	var cols = pp.gridConfig.columns;
        var rowIndex, colIndex, smRowIndex, smColIndex = 0;
    	for(var i=0; i<cols.length; i++){    
    		prayerCol++;

            rowIndex = pp.gridConfig[cols[i]]["lg-pt-row"];
            colIndex = pp.gridConfig[cols[i]]["lg-pt-col"];
            smRowIndex = pp.gridConfig[cols[i]]["sm-pt-row"];
            smColIndex = pp.gridConfig[cols[i]]["sm-pt-col"];

    		var prayerBeginTime = todayData[cols[i]+"Time"];
    		$('#prayertimegrid1 tr:eq('+rowIndex+') td:eq('+colIndex+') span').text(prayerBeginTime);
            $('#prayertimegrid2 tr:eq('+smRowIndex+') td:eq('+smColIndex+') span').text(prayerBeginTime);

            rowIndex = pp.gridConfig[cols[i]]["lg-iq-row"];
            colIndex = pp.gridConfig[cols[i]]["lg-iq-col"];
            smRowIndex = pp.gridConfig[cols[i]]["sm-iq-row"];
            smColIndex = pp.gridConfig[cols[i]]["sm-iq-col"];

            var prayerIqamaTime = todayData[cols[i]+"IqamaTime"];
    		$('#prayertimegrid1 tr:eq('+rowIndex+') td:eq('+colIndex+') span').text(prayerIqamaTime);
            $('#prayertimegrid2 tr:eq('+smRowIndex+') td:eq('+smColIndex+') span').text(prayerIqamaTime);

    		prayerBeginTime="";
    		prayerIqamaTime="";
    	}
    	
    }

    function findNextPrayer(){
        log("Setting next prayer");
        if(pp.previousPrayer === "isha"){
            pp.nextPrayer = "fajar";
        } else if(pp.previousPrayer !== null) {
            pp.nextPrayer = pp.prayerList[pp.prayerList.indexOf(pp.previousPrayer)+1];
        } else {
            //find the next prayer
        	//alert("Accessing Ajax data");
            var todayData = pp.ptData[nowWithoutTimeStr];
            for(var i=0; i < pp.prayerList.length; i++){
            	var prayerNameProp = pp.prayerList[i]+"IqamaTime";
                var pDate = new Date(nowWithoutTimeStr + " " + todayData[prayerNameProp]);
                var bufferProp = todayData[pp.prayerList[i]+"BufferTime"];
                var startTime = new Date(pDate.getTime() + (bufferProp * 60 * 1000));

                if(now.getTime() < startTime.getTime()){
                    pp.previousPrayer = pp.nextPrayer;
                    pp.nextPrayer = pp.prayerList[i];
                    log("The next prayer is: "+pp.nextPrayer);
                    log("Now: "+now+" Next prayer start time: "+startTime);
                    pp.nextRunTimeInMilliSec = startTime.getTime() - now.getTime();
                    break;
                }

            }
        }
        log("Done setting next prayer");
    }

    function moveSlider(){
        var rowIndex, colIndex, smRowIndex, smColIndex = 0;

        //remove current high lighted prayer in table 1
        $('#prayertimegrid1 tr th').removeClass("nextprayer");
        $('#prayertimegrid1 tr td').removeClass("nextprayer");

        //remove current high lighted prayer in table 2
        $('#prayertimegrid2 tr th').removeClass("nextprayer");
        $('#prayertimegrid2 tr td').removeClass("nextprayer");

        rowIndex = pp.gridConfig[pp.nextPrayer]["lg-pt-row"];
        colIndex = pp.gridConfig[pp.nextPrayer]["lg-pt-col"];
        smRowIndex = pp.gridConfig[pp.nextPrayer]["sm-pt-row"];
        smColIndex = pp.gridConfig[pp.nextPrayer]["sm-pt-col"];

        //apply css to the next prayer in table 1
        //apply to header row; currently hardcoded need to externalize this;
        $('#prayertimegrid1 tr:eq(0) th:eq('+colIndex+")").addClass("nextprayer");
        $('#prayertimegrid1 tr:eq('+rowIndex+') td:eq('+colIndex+")").addClass("nextprayer");

        //apply css to the next prayer in table 1
        //apply to header row; currently hardcoded need to externalize this;
        $('#prayertimegrid2 tr:eq(0) th:eq('+smColIndex+")").addClass("nextprayer");
        $('#prayertimegrid2 tr:eq('+smRowIndex+') td:eq('+smColIndex+")").addClass("nextprayer");

        //apply to iqama times
        rowIndex = pp.gridConfig[pp.nextPrayer]["lg-iq-row"];
        colIndex = pp.gridConfig[pp.nextPrayer]["lg-iq-col"];
        smRowIndex = pp.gridConfig[pp.nextPrayer]["sm-iq-row"];
        smColIndex = pp.gridConfig[pp.nextPrayer]["sm-iq-col"];
        $('#prayertimegrid1 tr:eq('+rowIndex+') td:eq('+colIndex+")").addClass("nextprayer");
        $('#prayertimegrid1 tr:eq('+smRowIndex+') td:eq('+smColIndex+")").addClass("nextprayer");

        //$('#prayertimegrid2 tr:eq(0) th').addClass("nextprayer");

        //apply css to the next prayer in table 2
        //$('#prayertimegrid2 tr:eq('+secondTableIndex+") th").addClass("nextprayer");
        //$('#prayertimegrid2 tr:eq('+secondTableIndex+") td").addClass("nextprayer");

    }

    function setNextRun(){
        setTimeout(run, pp.nextRunTimeInMilliSec);
    }

    var run = function(){
        init();
        loadPluginData();
        buildPrayerList();
        populatePrayerScheduleGrid();
        findNextPrayer();
        moveSlider();
        setNextRun();
    }

    function Slider(){
        run();
    }
    
    pp.slider = Slider;

    //new Slider();

}("DAILY",true))