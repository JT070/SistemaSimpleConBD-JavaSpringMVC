package Controlador;

import config.ConexionDB;
import entidad.Empleado;
import entidad.Tienda;
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
public class ControladorEmpleado {
    
    ConexionDB con = new ConexionDB();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();//Instaciar la de servlet 
    
    //Metodo para la vista
    @RequestMapping(value = "altaEmpleado.htm", method = RequestMethod.GET)
    public ModelAndView vistaAgrega() {
        mav.addObject(new Empleado());
        mav.setViewName("altaEmpleado");
        return mav;
    }
    
    //Metodo para agregar
    @RequestMapping(value = "altaEmpleado.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Empleado e) {
        String sql = "insert into empleado(idtienda, nombre, cargo, celular, email, sexo) values (?,?,?,?,?,?)";
        this.jdbcTemplate.update(sql, e.getIdtienda(), e.getNombre(),e.getCargo(),e.getCelular(),e.getEmail(),e.getSexo());
        return new ModelAndView("redirect:/listaEmpleado.htm");
    }
    
    int codigo;
    String infoB;
    List datos;
    
    //Metodo para listar
    @RequestMapping("listaEmpleado.htm")
    public ModelAndView Listar() {
        String sql = "select * from empleado";
        //Contiene una consulta de la linea sql
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listaEmpleado");
        return mav;
    }
    
    //Metodo para las vistas del formulario editar
    @RequestMapping(value = "editarEmpleado.htm", method = RequestMethod.GET)
    public ModelAndView vistaEditar(HttpServletRequest request) {
        codigo = Integer.parseInt(request.getParameter("codigo"));
        String sql = "select * from empleado where idnumEmpleado =" + codigo;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("editarEmpleado");
        return mav;
    }
    
    //Metodo para editar el contenido de Empleado
    @RequestMapping(value = "editarEmpleado.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Empleado e) {
        String sql = "update empleado set idtienda=?,nombre=?,cargo=?,celular=?,email=?,sexo=? where idnumEmpleado=?";
        this.jdbcTemplate.update(sql, e.getIdtienda(),e.getNombre(),e.getCargo(),e.getCelular(),e.getEmail(),e.getSexo(), codigo);
        return new ModelAndView("redirect:/listaEmpleado.htm");
    }
    
    //Metodo para eliminar
    @RequestMapping(value = "eliminarEmpleado.htm")
    public ModelAndView Eliminar(HttpServletRequest request) {
        codigo = Integer.parseInt(request.getParameter("codigo"));
        String sql = "delete from empleado where idnumEmpleado=" + codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/listaEmpleado.htm");
    }
    //Metodo para buscar
    @RequestMapping("buscarEmpleado.htm")
    public ModelAndView Buscar(HttpServletRequest request) {
        String info= request.getParameter("infoB");
        String sql = "select * from empleado where idnumEmpleado = "+ info;
        //Contiene una consulta de la linea sql
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listaEmpleado");
        return mav;
    }
    
    
}
