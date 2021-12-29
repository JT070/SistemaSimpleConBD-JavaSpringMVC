package Controlador;


import config.ConexionDB;
import entidad.Clientes;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controladorClientes {
    
     //Instanciamos 
    ConexionDB con = new ConexionDB();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView(); /// instanciar la de servlet
    
    /// Metodo para la vista
    @RequestMapping(value = "altaCliente.htm", method = RequestMethod.GET)
    public ModelAndView vistaAgregar(){
        mav.addObject(new Clientes());
        mav.setViewName("altaCliente");
        return mav;
    }
    
    //Metodo para Agreagar
    
    @RequestMapping(value = "altaCliente.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Clientes v){
        
        String sql="insert into cliente(nombre,apaterno,amaterno,celular,fechanacimiento,correo,sexo)values(?,?,?,?,?,?,?)";
        this.jdbcTemplate.update(sql, v.getNombre(),v.getApaterno(),v.getAmaterno(),v.getCelular(),v.getFechanacimiento(),v.getCorreo(),v.getSexo());
        return new ModelAndView("redirect:/altaCliente.htm");
    }
    
    int codigo;
    List datos;
    
    //Metodo para listar
    @RequestMapping("listaCliente.htm")
    public ModelAndView Listar(){
        String sql="select *from cliente";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("listaCliente");
        return mav;
    }
    
    //Metodo para la vista del formulario Editar
    @RequestMapping(value = "editarCliente.htm",method = RequestMethod.GET)
    public ModelAndView vistaEditar(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("idcliente"));
        String sql = "select * from cliente where idcliente=" + codigo;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("editarCliente");
        return mav;
    }
    
    //Metodo para editar
    @RequestMapping(value = "editarCliente.htm",method = RequestMethod.POST)
    public ModelAndView Editar(Clientes v){
        String sql = "update cliente set nombre=?,apaterno=?,amaterno=?,celular=?,fechanacimiento=?,correo=?,sexo=? where idcliente=?";
        this.jdbcTemplate.update(sql, v.getNombre(),v.getApaterno(),v.getAmaterno(),v.getCelular(),v.getFechanacimiento(),v.getCorreo(),v.getSexo(),codigo);
        return new ModelAndView("redirect:/listaCliente.htm");
    }
    
    //Metodo para eliminar
    @RequestMapping(value = "eliminarCliente.htm")
     public ModelAndView Eliminar(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("idcliente"));
        String sql="delete from cliente where idcliente="+codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/listaCliente.htm");
     }
     
     ///Metodo para buscar
    @RequestMapping(value = "listaCliente.htm", method = RequestMethod.POST)
    public ModelAndView Buscar(HttpServletRequest request){
        String dato= request.getParameter("txtBuscar");
        String sql="select * from cliente where idcliente= "+dato;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("listaCliente");
        return mav;
    }
    
}
