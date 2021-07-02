
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<div>
    <p class="fw-bold fs-4 p-2 mb-1 text-center" >Mis zonas sociales</p>
</div>

<!--Card Servicios-->
<div class="m-3 d-flex justify-content-center">
<div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
        <div class="card">
            <img src="<%=request.getContextPath()%>/_img/Gym.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Gimnasio</h5>
                <p class="card-text">Área de entrenamiento con máquinas de ejercicio multifuncional con aforo máximo permitido de 15 residentes por 1 hora c/u.  </p>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card">
            <img src="<%=request.getContextPath()%>/_img/Piscina.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Piscina</h5>
                <p class="card-text">Espacio con aforo permitido máximo de 15 residentes, para disfrute de agua climatizada o sauna por 1 hora c/u.</p>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card">
            <img src="<%=request.getContextPath()%>/_img/salonJuegos.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Salon de Juegos</h5>
                <p class="card-text">Zona de esparcimiento familiar para residentes con variedad de juegos, con aforo máximo permitido de 10 residentes por 1 hora c/u.</p>
            </div>
        </div>
    </div>
</div>

</div>


<jsp:include page="/templates/parteInferior.jsp"/>