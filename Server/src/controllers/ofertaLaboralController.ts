import {Request,Response} from 'express';
import pool from '../database'; //acceso a la base de datos
class OfertaLaboralController
{
    public async mostrar_todos_puestos(req: Request, res: Response ): Promise<void>{
        const respuesta = await pool.query('SELECT * FROM ofertalaboral');
        res.json( respuesta );
    }
    public async listOne(req: Request, res: Response): Promise <void>{
        const {id} = req.params;
        const respuesta = await pool.query('SELECT * FROM ofertalaboral WHERE idOferta = ?', [id]);
        if(respuesta.length>0){
            res.json(respuesta[0]);
            return ;
        }
        res.status(404).json({'mensaje': 'Oferta no encontrado'});
    }
    //EMPIEZA CRUD
    public async createOferta(req: Request, res: Response): Promise<void> {
        const idEmpresa = req.body.id_empresa;
        var resp = await pool.query("INSERT INTO ofertalaboral set ?",[req.body]);
        const idOferta = resp.insertId;
        const consulta = {"idEmpresa":idEmpresa, "idOferta":idOferta};
        resp = await pool.query(`INSERT INTO oferta_empresa set ?`, [consulta]);
        res.json(resp);
    }

}
export const ofertaLaboralController = new OfertaLaboralController();