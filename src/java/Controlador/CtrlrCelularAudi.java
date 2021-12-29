/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import config.ConexionDB;
import entidad.Celular;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author JT
 */

@Controller
public class CtrlrCelularAudi {
    
    // Instancias
    ConexionDB con = new ConexionDB();
    JdbcTemplate jbdcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    
    int codigo;
    List datos;
    
    // Método para listar
    @RequestMapping("ListaAudiCelular.htm")
    public ModelAndView Listar () {
        String sql = "SELECT * FROM auditoria_celular";
        datos = this.jbdcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("ListaAudiCelular"); //Tiene que ser el nombre del jsp
        return mav;
    }
    
    //Metodo para buscar
    @RequestMapping("buscar.htm")
    public ModelAndView Buscar(HttpServletRequest request) {
        String info= request.getParameter("txtBuscar");
        String sql = "SELECT * FROM auditoria_celular where idcelularAudi = "+ info;
        //Contiene una consulta de la linea sql
        datos = this.jbdcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("ListaAudiCelular");
        return mav;
    }
    
    
}
