import { Component, OnInit } from '@angular/core';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-reestablecer-contrasena',
  templateUrl: './reestablecer-contrasena.component.html',
  styleUrls: ['./reestablecer-contrasena.component.css']
})
export class ReestablecerContrasenaComponent implements OnInit {

  nuevaContrasena : string = "";

  constructor() {
    this.nuevaContrasena = "";
   }

  ngOnInit(): void {
  }

  actualizarContrasena(){
    console.log(this.nuevaContrasena);
    Swal.fire({
      title: 'Actualización exitosa',
      text: 'Se ha actualizado su contraseña',
      icon: 'success',
      confirmButtonText: 'Aceptar'
    })
  }

}
