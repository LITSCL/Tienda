package cl.inacap.tiendaejb.business;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import cl.inacap.tiendaejb.model.Sucursal;

/**
 * Session Bean implementation class Servicio
 */
@Stateless
@LocalBean
public class Servicio implements ServicioLocal {
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("TiendaEJB");
    /**
     * Default constructor. 
     */
    public Servicio() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public String saveSucursal(Sucursal su) {
		EntityManager em = this.emf.createEntityManager();
		try {
			em.persist(su);
			em.flush();
			return "Sucursal añadida con exito";
		} catch(Exception ex) {
			return "No se pudo añadir la sucursal";
		}
		finally {
			em.close();
		}
	}

	@Override
	public List<Sucursal> getAllSucursal() {
		EntityManager em = this.emf.createEntityManager();
		try {
			List<Sucursal> sucursales = em.createNamedQuery("Sucursal.getAll", Sucursal.class).getResultList();
			return sucursales;
		} catch(Exception ex) {
			return null;
		}
		finally {
			em.close();
		}
	}

	@Override
	public void deleteSucursal(int id) {
		EntityManager em = this.emf.createEntityManager();
		Sucursal su = new Sucursal();
		try {
			su = em.find(Sucursal.class, id);
			em.remove(su);
			em.flush();
		} catch(Exception ex) {
			
		}
		finally {
			em.close();
		}
	}

	@Override
	public void updateSucursal(Sucursal su) {
		EntityManager em = this.emf.createEntityManager();
		Sucursal suc = new Sucursal();
		try {
			suc = em.find(Sucursal.class, su.getId());
			suc.setNombre(su.getNombre());
			suc.setDireccion(su.getDireccion());
			suc.setComuna(su.getComuna());
			suc.setTelefono(su.getTelefono());
			em.merge(suc);
			em.flush();
		} catch(Exception ex) {

		}
		finally {
			em.close();
		}
	}

}
