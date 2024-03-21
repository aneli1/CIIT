import { Component, OnInit, AfterViewInit, ElementRef } from '@angular/core';

declare var M: any; // Declarar M para acceder a Materialize desde TypeScript

@Component({
  selector: 'app-principal',
  templateUrl: './principal.component.html',
  styleUrls: ['./principal.component.css']
})
export class PrincipalComponent implements OnInit, AfterViewInit {

  constructor(private el: ElementRef) { }

  ngOnInit(): void {
    // No inicialices el carrusel aquí
  }

  ngAfterViewInit(): void {
    // Inicializa el carrusel después de que la vista haya sido inicializada
    const carouselElem = this.el.nativeElement.querySelector('.carousel');
    M.Carousel.init(carouselElem, {});
  }

}
