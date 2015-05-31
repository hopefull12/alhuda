<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JQuery JTable integration with Spring MVC3 </title>
        <c:set var="baseURL" value="${pageContext.servletContext.contextPath}" />  
        
        <%-- JQuery --%>
        <script src="${baseURL}/resources/scripts/jquery-1.6.4.min.js" type="text/javascript"></script>
        <script src="${baseURL}/resources/scripts/jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>
        
        <%-- JTable --%>
        <link href="${baseURL}/resources/scripts/jtable/themes/metro/blue/jtable.css" rel="stylesheet" type="text/css" />       
        <script src="${baseURL}/resources/scripts/jtable/jquery.jtable.js" type="text/javascript"></script>
        
        <link href="${baseURL}/resources/css/jquery-ui-1.8.16.custom.css" rel="stylesheet" type="text/css" />
        
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('#ExpenseTableContainer').jtable({
		            title: 'Table of people',
		            selecting: true, //Enable selecting 
		            paging: true, //Enable paging
		            pageSize: 10, //Set page size (default: 10)
		            sorting: true, //Enable sorting		            
		            actions: {
		                listAction: '/testjt/getAllExpenses',
		                createAction: '/GettingStarted/CreatePerson',
		                updateAction: '/GettingStarted/UpdatePerson',
		                deleteAction: '/GettingStarted/DeletePerson'
		            },
		            fields: {
		                ExpenseId: {
		                    title: 'ID',
		                    key: true,
		                    list: true,
		                    create: false,
		                    edit: false
		                },
		                Date: {
		                    title: 'Date',
		                    width: '30%'
		                }
		            }
		        });
		    });
		    $('#ExpenseTableContainer').jtable('load'); 
		</script>
    </head>
    <body>
    This is a test jtablel!
        <div>       
             <div id="ExpenseTableContainer" style="width:99%;"></div>
        </div>
    </body>
</html>