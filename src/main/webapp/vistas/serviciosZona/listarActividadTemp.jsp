<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Servicios del Conjunto</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="#">Servicios y Zonas</a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/ServiciosZonaServlet?opcion=listarServicios">Servicios</a>
                </li>
            </ol>
        </div>
    </div>
</div>
<!-- Header end -->

<!-- Tables start -->
<!-- Row start -->
<div class="row">
    <div class="col-sm-12">
        <!-- Basic Table starts -->
        <div class="card">
            <div class="card-header">
                <h5 class="card-header-text">Listado general</h5>
                <p>Servicios recreativos disponibles</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia tabla-->

                        <table class="table">
                            <thead>
                            <tr>
                                <th>Código servicio</th>
                                <th>Nombre servicio</th>
                                <th>Zona social</th>
                            </tr>
                            </thead>

                            <c:forEach var="serviciosZona" items="${lista}">
                                <tr>

                                    <td><c:out value="${serviciosZona.idActividad}"></c:out></td>
                                    <td><c:out value="${serviciosZona.nombreActividad}"></c:out></td>
                                    <td><c:out value="${zonasDAO.obtenerZonas(serviciosZona.idZona).getNombreZona()}"></c:out></td>

                                </tr>
                            </c:forEach>

                        </table>
                        <!--finaliza tabla-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic Table ends -->

        <jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>
