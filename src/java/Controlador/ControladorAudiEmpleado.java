package Controlador;

import config.ConexionDB;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author luis.peña
 */
public class ControladorAudiEmpleado {
      //Instanciamos 
    ConexionDB con = new ConexionDB();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();//Instaciar la de servlet
    
    int codigo;
    List datos;
    
    //Metodo para listar
    @RequestMapping("listaAudEmpleado.htm")
    public ModelAndView Listar(){
        String sql = "select * from auditoria_empleado";
        //Contiene una consulta de la linea sql
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listaAudEmpleado");
        return mav;
    }    
    
    @RequestMapping(value = "listaAudEmpleado.htm", method = RequestMethod.POST)
    public ModelAndView Buscar(HttpServletRequest request){
        String dato= request.getParameter("txtBuscar");
        String sql="select * from auditoria_empleado where idnumEmpleadoAudi = "+dato;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("listaAudEmpleado");
        return mav;
    }
}
