$(document).ready(function() {
    if($('table').attr('id') === "example"){//nombre de la tabla
        let dataForm = "opcion=listarApartamento"; //opcion get servlet
        let table;
        $.ajax({
            type: "GET",
            url: "../../ApartamentoServlet",//nombre servlet
            data: dataForm,
            dataType: "text",
            success: function (response) {
                let data = JSON.parse(response);
                console.log(data);

                table = $('#example').DataTable({//llamar el mismo nombre de la table

                    "language": {

                        "lengthMenu": "Mostrar _MENU_ registros",
                        "zeroRecords": "No se encontraron resultados",
                        "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                        "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                        "sSearch": "Buscar:",
                        "oPaginate": {
                            "sFirst": "Primero",
                            "sLast": "Último",
                            "sNext": "Siguiente",
                            "sPrevious": "Anterior"
                        },
                        "sProcessing": "Procesando...",
                    },
                    "data": data,
                    "columns": [//columnas de la tabla dependiendo de la configuracion json mismo orden scrip y jsp
                        {"data": "apartamento"},
                        {"data": "torre"},
                        {"data": "estadoCartera"},
                        {"defaultContent": `<button class="edit btn btn-submit m-1"><em class="fas fa-pen"></em></button>`},
                        {"defaultContent": `<button class="delet btn btn-secondary m-1" ><em class="fas fa-trash-alt text-light"></em></button>`}
                    ]
                });
            }
        });

        $("#example tbody").on("click", ".edit", function () {//llamo el nombre de la tabla y cuerpo de la tabla

            // OBTENEMOS LA INFORMACIÓN DE LA FILA
            let dataRow = table.row($(this).parents()).data();
            localStorage.setItem("apartamento",JSON.stringify(dataRow));// nombre clave para un nuevo json

            window.location.replace("editarApartamento.jsp");//redireccionamiento

        });

        $("#example tbody").on("click", ".delet", function () {

            // OBTENEMOS LA INFORMACIÓN DE LA FILA
            let dataRow = table.row($(this).parents()).data();
            let deleteInfo = "opcion=eliminar&apartamento=" + dataRow.apartamento + "&torre=" + dataRow.torre;//parametros de la opcion

            $.ajax({
                type: "GET",
                url: "../../ApartamentoServlet",//nombre del servlet
                data: deleteInfo,
                dataType: "text",
                success:function(response){
                    window.location.replace("listarApartamento.jsp");//redirecciona
                }
            });

        });
    }
    else{
        let apartamentoData = JSON.parse(localStorage.getItem("apartamento"));//nombre clave que cree en linea 48
        console.log("No hay table");
        console.log(apartamentoData);
        $("#apartamentoHidden").val(apartamentoData.apartamento);//cargo valores del formulario
        $("#torreHidden").val(apartamentoData.torre);
        $("#apartamento").val(apartamentoData.apartamento);
        $("#torre").val(apartamentoData.torre);
        $("#cartera").val(apartamentoData.estadoCartera);
        localStorage.removeItem("apartamento");//json de local storage elimina variable
    }
} );