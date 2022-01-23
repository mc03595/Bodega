//TOOLTIP

var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
})

//BOTON DE GUARDAR
$(".btnGuardar").click(function(){
	Swal.fire({
	  position: 'center',
	  icon: 'success',
	  title: 'Ha sido guardado',
	  showConfirmButton: false,
	  timer: 3000
	})
});

//BOTON DE ELIMINAR
$(".btnEliminar").click(function(){
	Swal.fire({
	  title: '¿Está seguro de eliminar?',	  
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: 'Sí, eliminar'
	}).then((result) => {
	  if (result.isConfirmed) {
	    Swal.fire(
	      'Eliminado!',
	      'Ha sido eliminado',
	      'success'
	    )
	  }
	})
});

