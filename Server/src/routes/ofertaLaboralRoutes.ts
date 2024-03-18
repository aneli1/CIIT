import { Router } from 'express';
import { ofertaLaboralController } from '../controllers/ofertaLaboralController';
class OfertaLaboralRoutes
{
public router: Router=Router();
constructor()
{
this.config();
}
config() : void
{

    this.router.get('/mostrarTodosOfertasLaborales/',(req,res) => res.send('probando ofertas'));
    this.router.get('/obtenerOferta/:id',ofertaLaboralController.listOne);
    this.router.post('/createOferta/',ofertaLaboralController.createOferta);
}
}
const ofertaLaboralRoutes= new OfertaLaboralRoutes();
export default ofertaLaboralRoutes.router;
