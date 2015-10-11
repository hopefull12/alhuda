<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <section id="content">

            <div class="content-wrap">

                <div class="container clearfix">
                		
                	<div class="col_one_fourth"></div>
                
					<div class="col_half" >		
							
							<h3>Download Files List</h3>
	                        <div class="list-group">	                        	                        
	                        	<c:forEach var="item" items="${downloadlist}">
									<a class="list-group-item" target="_blank" href="downloadFile/${item['fileName']}/">${item['name']}</a>
	                            </c:forEach>                          
	                        </div>							
								
					</div>                
					
					<div class="col_one_fourth col_last"></div>
					
					<!-- 
					
                	<div class="col_one_fourth"></div>
                
					<div class="col_half" >		
							
							<h3>Ramadan Files</h3>
	                        <div class="list-group">
	                        	<c:forEach var="fileName" items="${ptPdfFiles.ramadanFiles}">
									<a class="list-group-item" target="_blank" href="ptPDFFiles/${fileName[1]}/">${fileName[0]}</a>
	                            </c:forEach>                          
	                        </div>							
								
					</div>                
					
					<div class="col_one_fourth col_last"></div>	
					
                	<div class="col_one_fourth"></div>
                
					<div class="col_half" >		
							
							<h3>Misc Files</h3>
	                        <div class="list-group">
	                        	<c:forEach var="fileName" items="${ptPdfFiles.miscFiles}">
									<a class="list-group-item" target="_blank" href="ptPDFFiles/${fileName[1]}/">${fileName[0]}</a>
	                            </c:forEach>                          
	                        </div>							
								
					</div>                
					
					<div class="col_one_fourth col_last"></div>			
					 -->						

                </div>

            </div>

        </section><!-- #content end -->