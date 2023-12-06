package cl.inacap.tiendaejb.business;

import java.util.List;

import javax.ejb.Local;

import cl.inacap.tiendaejb.model.Sucursal;

@Local
public interface ServicioLocal {
	public String saveSucursal(Sucursal su);
	public List<Sucursal> getAllSucursal();
	public void deleteSucursal(int id);
	public void updateSucursal(Sucursal su);
}


 