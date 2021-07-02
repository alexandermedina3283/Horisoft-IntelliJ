<jsp:include page="/templates/parteSuperior.jsp"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/jquery-3.6.0.min.js"></script>--%>
<%--<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/bootstrap.min.js"></script>--%>
<%--<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/jquery.dataTables.min.js"></script>--%>
<%--<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/scriptOriginal.js"></script>--%>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script  charset="utf8" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js"></script>

<script>
    $.extend( true, $.fn.dataTable.defaults, {
        "language": {
            "decimal": ",",
            "thousands": ".",
            "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            "infoPostFix": "",
            "infoFiltered": "(filtrado de un total de _MAX_ registros)",
            "loadingRecords": "Cargando...",
            "lengthMenu": "Mostrar _MENU_ registros",
            "paginate": {
                "first": "Primero",
                "last": "Último",
                "next": "Siguiente",
                "previous": "Anterior"
            },
            "processing": "Procesando...",
            "search": "Buscar:",
            "searchPlaceholder": "Término de búsqueda",
            "zeroRecords": "No se encontraron resultados",
            "emptyTable": "Ningún dato disponible en esta tabla",
            "aria": {
                "sortAscending":  ": Activar para ordenar la columna de manera ascendente",
                "sortDescending": ": Activar para ordenar la columna de manera descendente"
            },
            //only works for built-in buttons, not for custom buttons
            "buttons": {
                "create": "Nuevo",
                "edit": "Cambiar",
                "remove": "Borrar",
                "copy": "Copiar",
                "csv": "fichero CSV",
                "excel": "tabla Excel",
                "pdf": "documento PDF",
                "print": "Imprimir",
                "colvis": "Visibilidad columnas",
                "collection": "Colección",
                "upload": "Seleccione fichero...."
            },
            "select": {
                "rows": {
                    _: '%d filas seleccionadas',
                    0: 'clic fila para seleccionar',
                    1: 'una fila seleccionada'
                }
            }
        }
    } );
</script>



<script type="text/javascript">
    $(document).ready( function () {
        $('#example').DataTable();
    } );
</script>




<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=crearMascota" role="button">Crear un nuevo registro</a>

<table id="example" class="display" style="width: 95%">
    <thead>
    <tr>
        <th>Número mascota</th>
        <th>Nombre</th>
        <th>Clase</th>
        <th>Apartamento</th>
        <th>Torre</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <c:forEach var="mascota" items="${lista}">
        <tbody>
        <tr>
            <td><c:out value="${mascota.idMascota}"></c:out></td>
            <td><c:out value="${mascota.nombre}"></c:out></td>
            <td><c:out value="${mascota.clase}"></c:out></td>
            <td><c:out value="${mascota.apartamento}"></c:out></td>
            <td><c:out value="${mascota.torre}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=eliminar&idMascota=<c:out value="${mascota.idMascota}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=editar&idMascota=<c:out value="${mascota.idMascota}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
        </tbody>
    </c:forEach>

</table>




<!--</body>
</html>-->

<jsp:include page="/templates/parteInferior.jsp"/>


