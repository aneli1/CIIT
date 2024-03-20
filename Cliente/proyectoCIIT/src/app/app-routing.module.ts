import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './components/login/login.component';
import { EmpresaComponent } from './components/empresa/empresa.component';
import { HomeComponent } from './components/home/home.component';
import { UsuarioComponent } from './components/usuario/usuario.component';

const routes: Routes = [
  {
    path:"",
    redirectTo:"/login",
    pathMatch:"full"
  },
  {
    path:'login',
    component: LoginComponent
  },
  {
      path: 'home',
      component: HomeComponent,
      children: [
      {
        path: 'usuarios',
        component: UsuarioComponent,
      },
      {
        path: 'empresa',
        component: EmpresaComponent
      },
      ]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
