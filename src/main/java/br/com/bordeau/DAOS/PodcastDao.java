package br.com.bordeau.DAOS;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.bordeau.model.Podcast;

@Repository
@Transactional
public class PodcastDao implements DAO{
	
	@PersistenceContext
	private EntityManager manager; 

	public Podcast findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void gravar(Object object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Podcast> listar() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Object object) {
		Podcast podcast = (Podcast) object;
	}

	@Override
	public void remove(Object object) {
		Podcast podcast = (Podcast) object;		
	}




}
