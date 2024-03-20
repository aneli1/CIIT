import { Component, OnInit } from '@angular/core';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-olvide-contrasena',
  templateUrl: './olvide-contrasena.component.html',
  styleUrls: ['./olvide-contrasena.component.css']
})
export class OlvideContrasenaComponent implements OnInit {

  correo : string = "";

  constructor() {
    this.correo = "";
   }

  ngOnInit(): void {
  }

  enviarCorreo(){
    console.log(this.correo);

    Swal.fire({
      title: 'Correo enviado',
      text: 'Se ha enviado un correo a su dirección de correo electrónico',
      icon: 'success',
      confirmButtonText: 'Aceptar'
    })


  }

}
