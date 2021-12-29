package Controlador;

import config.ConexionDB;
import entidad.Tienda;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public class controladorTienda {

    //Instanciamos 
    ConexionDB con = new ConexionDB();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();//Instaciar la de servlet

    //Metodo para la vista
    @RequestMapping(value = "altaTienda.htm", method = RequestMethod.GET)
    public ModelAndView vistaAgrega() {
        mav.addObject(new Tienda());
        mav.setViewName("altaTienda");
        return mav;
    }

    //Metodo para agregar
    @RequestMapping(value = "altaTienda.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Tienda t) {
        String sql = "insert into tienda(nombre, telefono, pais, direccion, correo, rfc) values (?,?,?,?,?,?)";
        this.jdbcTemplate.update(sql, t.getNombre(), t.getTelefono(), t.getPais(), t.getDireccion(), t.getCorreo(), t.getRfc());
        return new ModelAndView("redirect:/listaTienda.htm");
    }

    int codigo;
    String infoB;
    List datos;

    //Metodo para listar
    @RequestMapping("listaTienda.htm")
    public ModelAndView Listar() {
        String sql = "select * from tienda";
        //Contiene una consulta de la linea sql
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listaTienda");
        return mav;
    }

    //Metodo para las vistas del formulario editar
    @RequestMapping(value = "editarTienda.htm", method = RequestMethod.GET)
    public ModelAndView vistaEditar(HttpServletRequest request) {
        codigo = Integer.parseInt(request.getParameter("codigo"));
        String sql = "select * from tienda where idtienda =" + codigo;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("editarTienda");
        return mav;
    }

    //Metodo para editar el contenido de Tienda
    @RequestMapping(value = "editarTienda.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Tienda t) {
        String sql = "update tienda set nombre=?,telefono=?,pais=?,direccion=?,correo=?,rfc=? where idtienda=?";
        this.jdbcTemplate.update(sql, t.getNombre(), t.getTelefono(), t.getPais(), t.getDireccion(), t.getCorreo(), t.getRfc(), codigo);
        return new ModelAndView("redirect:/listaTienda.htm");
    }

    //Metodo para eliminar
    @RequestMapping(value = "eliminarTienda.htm")
    public ModelAndView Eliminar(HttpServletRequest request) {
        codigo = Integer.parseInt(request.getParameter("codigo"));
        String sql = "delete from tienda where idtienda=" + codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/listaTienda.htm");
    }

    //Metodo para buscar
    @RequestMapping("buscarTienda.htm")
    public ModelAndView Buscar(HttpServletRequest request) {
        String info= request.getParameter("infoB");
        String sql = "select * from tienda where idtienda = "+ info;
        //Contiene una consulta de la linea sql
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listaTienda");
        return mav;
    }
}
