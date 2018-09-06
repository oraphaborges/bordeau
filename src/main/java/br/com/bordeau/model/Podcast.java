package br.com.bordeau.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Podcast {
	@Id
	private Long id;
	@ManyToOne
	private Usuario criador;
	@OneToMany
	private List<Usuario> inscritos;
	@OneToMany
	private List<Playlist> playlists;
	private String descricao;
	private String capa;
	private String nome;
	@OneToMany
	private List<Categoria> categorias;
	
	//getters e setters
	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getId() {
		return id;
	}
	
	public void setUsuario(Usuario criador) {
		this.criador = criador;
	}
	
	public Usuario getUsuario() {
		return criador;
	}
	
	public List<Playlist> getPlaylists() {
		return playlists;
	}

	public void setPlaylists(List<Playlist> playlists) {
		this.playlists = playlists;
	}

	public void setUsuario(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setCapa(String capa) {
		this.capa = capa;
	}
	
	public String getCapa() {
		return capa;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return nome;
	}
}
