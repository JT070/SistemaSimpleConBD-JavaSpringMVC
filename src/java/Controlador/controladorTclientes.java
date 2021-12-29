package Controlador;

import config.ConexionDB;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
public class controladorTclientes {
    ConexionDB con = new ConexionDB();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView(); /// instanciar la de servlet
    
    int codigo;
    List datos;
    
    //Metodo para listar
    @RequestMapping("listaTcliente.htm")
    public ModelAndView Listar(){
        String sql="select * from auditoria_cliente";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("listaTcliente");
        return mav;
    }
    
    @RequestMapping(value = "listaTcliente.htm", method = RequestMethod.POST)
    public ModelAndView Buscar(HttpServletRequest request){
        String dato= request.getParameter("txtBuscar");
        String sql="select * from auditoria_cliente where idclienteAudi = "+dato;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("listaTcliente");
        return mav;
    }
}
