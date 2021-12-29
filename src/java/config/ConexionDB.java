package config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class ConexionDB{

    public DriverManagerDataSource Conectar() {
        DriverManagerDataSource dataSourceBuilder = new DriverManagerDataSource();
        try {
            dataSourceBuilder.setDriverClassName("org.postgresql.Driver");
            dataSourceBuilder.setUrl("jdbc:postgresql://localhost:5432/tiendacelu");
            dataSourceBuilder.setUsername("mariana");
            dataSourceBuilder.setPassword("54321");
            return dataSourceBuilder;
        } catch (Exception e) {  
            System.out.println("ALGO SALIO MAL! : " + e);
        }        
            return dataSourceBuilder;
    }
}
