<%-- 
    Document   : carrinho.jsp
    Created on : 05/11/2018, 18:24:53
    Author     : Ygor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if(!request.getParameter("fquantTeclado").equals(null) || !request.getParameter("fquantMouse").equals(null)
           || !request.getParameter("fquantMonitor").equals(null)  || !request.getParameter("fquantImpressora").equals(null) )
            if(request.getParameter("fquantTeclado") != null){ 
              int teclado = Integer.parseInt(request.getParameter("fquantTeclado"));
              session.removeAttribute("teclado");
              session.setAttribute("teclado", teclado);
            }        
            if(request.getParameter("fquantMouse") != null) {
              int mouse = Integer.parseInt(request.getParameter("fquantMouse"));
              session.removeAttribute("mouse");
              session.setAttribute("mouse", mouse);
            }
            if(request.getParameter("fquantMonitor") != null) {
              int monitor = Integer.parseInt(request.getParameter("fquantMonitor"));
              session.removeAttribute("monitor");
              session.setAttribute("monitor", monitor);
            }
            if(request.getParameter("fquantImpressora") != null) {
              int impressora = Integer.parseInt(request.getParameter("fquantImpressora"));
              session.removeAttribute("impressora");
              session.setAttribute("impressora", impressora);
            }
                           
         
         %><table style="width : 80%;">
             <%int itemCompra;
               int numeracao = 0;
              %>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>CÓDIGO</th>
                            <th>PRODUTO</th>
                            <th>QTDE</th>
                            <th>VALOR</th>
                            <th>TOTAL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%if(!((Integer)session.getAttribute("teclado")).equals(0)){
                            itemCompra = (Integer) session.getAttribute("teclado");
                            numeracao++;
                        %>
                        <tr>
                            <td><%out.print(numeracao);%></td>
                            <td>0010</td>
                            <td>TECLADO</td>
                            <td><%=session.getAttribute("teclado")%></td>
                            <td>R$39.00</td>
                            <td>R$<%=itemCompra *39.00%></td>
                        </tr>
                        <%}%>
                        <%if(!((Integer)session.getAttribute("mouse")).equals(0)){
                            itemCompra = (Integer) session.getAttribute("mouse");
                            numeracao++;
                        %>
                        <tr>
                            <td><%out.print(numeracao);%></td>
                            <td>0011</td>
                            <td>MOUSE</td>
                            <td><%=session.getAttribute("mouse")%></td>
                            <td>R$29.00</td>
                            <td>R$<%=itemCompra *29.00%></td>
                        </tr>
                        <%}%>
                        <%if(!((Integer)session.getAttribute("monitor")).equals(0)){
                            itemCompra = (Integer) session.getAttribute("monitor");
                            numeracao++;
                        %>
                        <tr>
                            <td><%out.print(numeracao);%></td>
                            <td>0012</td>
                            <td>MONITOR</td>
                            <td><%=session.getAttribute("monitor")%></td>
                            <td>R$339.00</td>
                            <td>R$<%=itemCompra *339.00%></td>
                        </tr>
                        <%}%>
                        <%if(!((Integer)session.getAttribute("impressora")).equals(0)){
                            itemCompra = (Integer) session.getAttribute("impressora");
                            numeracao++;
                        %>
                        <tr>
                            <td><%out.print(numeracao);%></td>
                            <td>0013</td>
                            <td>IMPRESSORA</td>
                            <td><%=session.getAttribute("impressora")%></td>
                            <td>R$543.00</td>
                            <td>R$<%=itemCompra *543.00%></td>
                        </tr>
                        <%}%>
                        
                    </tbody>
                  </table>
    </body>
</html>
