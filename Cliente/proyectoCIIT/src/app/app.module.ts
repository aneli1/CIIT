import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './components/login/login.component';
import { EmpresaComponent } from './components/empresa/empresa.component';
import { HttpClientModule} from "@angular/common/http";
import { FormsModule } from '@angular/forms';
import { HomeComponent } from './components/home/home.component';
import { NavigationComponent } from './components/navigation/navigation.component';
import { FooterComponent } from './components/footer/footer.component';
import { UsuarioComponent } from './components/usuario/usuario.component';
import { CommonModule } from '@angular/common';
import { NgxPaginationModule } from 'ngx-pagination';
@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    EmpresaComponent,
    HomeComponent,
    NavigationComponent,
    FooterComponent,
    UsuarioComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    AppRoutingModule,
    FormsModule, 
    CommonModule,
    NgxPaginationModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
