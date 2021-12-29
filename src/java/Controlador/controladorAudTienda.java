package Controlador;

import config.ConexionDB;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class controladorAudTienda {
     //Instanciamos 
    ConexionDB con = new ConexionDB();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();//Instaciar la de servlet
    
    int codigo;
    List datos;
    
    //Metodo para listar
    @RequestMapping("listaAudTienda.htm")
    public ModelAndView Listar(){
        String sql = "select * from auditoria_tienda";
        //Contiene una consulta de la linea sql
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listaAudTienda");
        return mav;
    }    
    
    @RequestMapping("buscarAudTienda.htm")
    public ModelAndView Buscar(HttpServletRequest request) {
        String info= request.getParameter("infoB");
        String sql = "select * from auditoria_tienda where idtiendaAudi = "+ info;
        //Contiene una consulta de la linea sql
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listaAudTienda");
        return mav;
    }
}
