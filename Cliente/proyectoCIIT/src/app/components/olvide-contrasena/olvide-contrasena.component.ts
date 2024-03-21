import { Component, OnInit } from '@angular/core';
import Swal from 'sweetalert2';
import { CorreoService } from 'src/app/services/correo.service';

@Component({
  selector: 'app-olvide-contrasena',
  templateUrl: './olvide-contrasena.component.html',
  styleUrls: ['./olvide-contrasena.component.css']
})
export class OlvideContrasenaComponent implements OnInit {

  correo : string = "";

  constructor(private correosService: CorreoService) {
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
    this.correosService.enviarCorreoRecuperarContrasena({Email: this.correo}).subscribe((res: any) => {
      console.log(res);
    });
  }

}
