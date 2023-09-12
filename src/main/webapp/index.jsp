<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Tarea"%>
<%
    if(session.getAttribute("listatareas")==null){
        ArrayList<Tarea> lisaux = new ArrayList<Tarea>();
        session.setAttribute("listatareas",lisaux);
    }   
    ArrayList<Tarea> lista =(ArrayList<Tarea>) session.getAttribute("listatareas");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>GESTOR DE TAREAS</h1>
        <h2>Nombre: Jhorely Felicidad Chambi Choque</h2>
        <a href="MainServlet?op=nuevo">Nuevo</a><!-- comment -->
        <form action="MainServlet" method = 'get'>
        <table>
            <tr>
                <th>id</th>
                <th>Tarea</th>
                <th input type="checkbox" name="completado" value="">Completado</th>
                
                
                <th></th>
                
            </tr>
            
            
            <%
                if(lista!=null){
                    for(Tarea item : lista){
                        
                    
             %>   
                
                
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getTarea() %></td>
                <td ><%= item.getCompletado() %></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>"onclick ="return(confirm('SEGURO QUE DESEA ELIMINAR?'))">Eliminar</a>
                    
                    
                </td>
            </tr>
            
            <%
                    }
                } 
             %>
        </table>
        </form>
    </center>
    </body>
</html>
