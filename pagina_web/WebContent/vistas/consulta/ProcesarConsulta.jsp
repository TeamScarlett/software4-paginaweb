

<%
String add =request.getParameter("add");

if(add != null){
	out.println("add");
	
}
String del = request.getParameter("del");
if(del !=null){
	out.println("del");
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
}


	
%>