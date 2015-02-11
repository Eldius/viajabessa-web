package net.eldiosantos.viajabessa.repository.hibernate.base;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import net.eldiosantos.viajabessa.repository.interfaces.Repository;

public class BaseRepository<T, K extends Serializable> implements Repository<T, K> {

	@Inject
	private EntityManager entityManager;
	private final Class<?>clazz;

	@Deprecated
	public BaseRepository() {
		super();
		this.clazz = (Class<?>) ((ParameterizedType) getClass()
				.getGenericSuperclass()).getActualTypeArguments()[0];
	}

	public BaseRepository(EntityManager entityManager) {
		super();
		this.entityManager = entityManager;
		this.clazz = (Class<?>) ((ParameterizedType) getClass()
				.getGenericSuperclass()).getActualTypeArguments()[0];
	}



	@SuppressWarnings("unchecked")
	@Override
	public T getByPk(K pk) {
		return (T) entityManager.find(clazz, pk);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> listAll() {

        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<T> cq = (CriteriaQuery<T>) cb.createQuery(clazz);
        Root<T> rootEntry = (Root<T>) cq.from(clazz);
        CriteriaQuery<T> all = cq.select(rootEntry);
        TypedQuery<T> allQuery = entityManager.createQuery(all);
        return allQuery.getResultList();
	}

	@Override
	public void persist(T element) {
		entityManager.persist(element);
	}

	@Override
	public void update(T element) {
		entityManager.merge(element);
	}

	@Override
	public void delete(T element) {
		entityManager.remove(element);
	}
}
