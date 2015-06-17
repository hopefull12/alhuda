<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <section id="content">

            <div class="content-wrap">

                <div class="container clearfix">

                    <!-- Post Content
                    ============================================= -->
                    <div class="postcontent nobottommargin clearfix">

                        <h3>Prayer Times</h3>

                        <div class="list-group">
                        	<c:forEach var="fileName" items="${ptPdfFiles}">
								<a class="list-group-item" target="_blank" href="ptPDFFiles/${fileName}">${fileName}</a>
                            </c:forEach>                          
                        </div>


                    </div><!-- .postcontent end -->



                </div>

            </div>

        </section><!-- #content end -->