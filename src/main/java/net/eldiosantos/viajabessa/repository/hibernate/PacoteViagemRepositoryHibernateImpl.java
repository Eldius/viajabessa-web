package net.eldiosantos.viajabessa.repository.hibernate;

import javax.persistence.EntityManager;

import net.eldiosantos.viajabessa.model.PacoteViagem;
import net.eldiosantos.viajabessa.repository.PacoteViagemRepository;
import net.eldiosantos.viajabessa.repository.hibernate.base.BaseRepository;

public class PacoteViagemRepositoryHibernateImpl extends BaseRepository<PacoteViagem, Long> implements PacoteViagemRepository {

	@Deprecated
	public PacoteViagemRepositoryHibernateImpl(){
	}

	public PacoteViagemRepositoryHibernateImpl(EntityManager entityManager) {
		super(entityManager);
	}
}
