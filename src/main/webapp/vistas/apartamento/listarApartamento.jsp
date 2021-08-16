

<%@ page import="co.com.horisoft.modelo.beans.Apartamento" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet?opcion=crearApartamento" role="button">Crear un nuevo registro</a>

<table id="example" class="display" style="width: 99%">
    <thead>
    <tr>
        <th>Número apartamento</th>
        <th>Número torre</th>
        <th>Estado cartera</th>
        <th></th>
        <th></th>
    </tr>
    </thead>

    <tbody>
    </tbody>

    <tfoot>
    <tr>
        <th>Número apartamento</th>
        <th>Número torre</th>
        <th>Estado cartera</th>
        <th></th>
        <th></th>
    </tr>
    </tfoot>

</table>


<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/script.js"></script>

<!--</body>
</html>-->

<jsp:include page="/templates/parteInferior.jsp"/>