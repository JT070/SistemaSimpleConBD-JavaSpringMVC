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
public class CtrlrCelular {
    
    // Instancias
    ConexionDB con = new ConexionDB(); 
    JdbcTemplate jbdcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    
    // Método para la vista
    @RequestMapping(value = "InsertCelular.htm", method = RequestMethod.GET)
    public ModelAndView VistaCelular () {
        mav.addObject(new Celular());
        mav.setViewName("InsertCelular");
        return mav;
    }
    
    //Método para agregar
    @RequestMapping(value = "InsertCelular.htm", method = RequestMethod.POST)
    public ModelAndView Insertar (Celular c) {
        String sql = "INSERT INTO celular (idnumEmpleado, idcliente, nombre, sisoperativo, marca, memoria, precio, compania, color, cantidadcamaras, pulgadas, fechaventa, pixeles) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        this.jbdcTemplate.update(sql, c.getIdnumEmpleado(), c.getIdcliente(), c.getNombre(), c.getSisoperativo(), c.getMarca(), c.getMemoria(), c.getPrecio(), c.getCompania(), c.getColor(), c.getCantidadcamaras(), c.getPulgadas(), c.getFechaventa(), c.getPixeles());
        return new ModelAndView("redirect:/index.htm");
    }
    
    int codigo;
    List datos;
    
    // Método para listar
    @RequestMapping("ListaCelular.htm")
    public ModelAndView Listar () {
        String sql = "SELECT * FROM celular";
        datos = this.jbdcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("ListaCelular"); //Tiene que ser el nombre del jsp
        return mav;
    }
    
    // Método para Editar [vista]
    @RequestMapping(value = "EditarCelular.htm", method = RequestMethod.GET)
    public ModelAndView VistaEditar (HttpServletRequest request) {
        codigo = Integer.parseInt(request.getParameter("codigo")); // Codigo es la llave primaria
        String sql = "SELECT * FROM celular WHERE idcelular =" + codigo;        
        datos = this.jbdcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("EditarCelular");
        return mav;
    }
    
    // Método para Editar
    @RequestMapping(value = "EditarCelular.htm", method = RequestMethod.POST)
    public ModelAndView Editar (Celular c) {
       String sql = "UPDATE celular SET idnumEmpleado=?, idcliente=?, nombre=?, sisoperativo=?, marca=?, memoria=?, precio=?, compania=?, color=?, cantidadcamaras=?, pulgadas=?, fechaventa=?, pixeles=? WHERE idcelular = ?";
       this.jbdcTemplate.update(sql, c.getIdnumEmpleado(), c.getIdcliente(), c.getNombre(), c.getSisoperativo(), c.getMarca(), c.getMemoria(), c.getPrecio(), c.getCompania(), c.getColor(), c.getCantidadcamaras(), c.getPulgadas(), c.getFechaventa(), c.getPixeles(), codigo);
       return new ModelAndView("redirect:/ListaCelular.htm");
    }
    
    // Método para Eliminar
    @RequestMapping(value = "EliminarCelular.htm")
    public ModelAndView Eliminar (HttpServletRequest request) {
        codigo = Integer.parseInt(request.getParameter("codigo")); 
        String sql = "DELETE FROM celular WHERE idcelular =" + codigo;
        this.jbdcTemplate.update(sql);
        return new ModelAndView("redirect:/ListaCelular.htm");
    }    
    
    // Método para Buscar
    @RequestMapping(value = "ListaCelular.htm", method = RequestMethod.POST)
    public ModelAndView Buscar (HttpServletRequest request) {
        String dato = request.getParameter("txtBuscar"); // nombre del input
        String sql = "SELECT * FROM celular WHERE idcelular = "+dato;
        datos = this.jbdcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("ListaCelular"); 
        return mav;    
    }
}
