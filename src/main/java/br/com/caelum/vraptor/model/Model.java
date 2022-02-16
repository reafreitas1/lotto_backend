package br.com.caelum.vraptor.model;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@MappedSuperclass
//@Audited(withModifiedFlag=true)
public abstract class Model {

	@Column
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	protected int id;
	
	@Column(updatable=false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreationTimestamp
	protected Date created;
	
	@Column(updatable=true)
	@Temporal(TemporalType.TIMESTAMP)
	@UpdateTimestamp
	protected Date updated;

	@Column
	protected boolean ativo = true;
	
	@Column
	protected String motivoInativacao;
	
	@PrePersist
    protected void onCreate() {
    updated = created = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
    updated = new Date();
    }
    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getCreated() {
		return created;
	}
	
	public void setCreated(Date created) {
		this.created = created;
	}
	
	public Date getUpdated() {
		return updated;
	}
	
	public void setUpdated(Date updated) {
		this.updated = updated;
	}
	
	/**
	 * retorna um timestamp de criacao do modelo no formato
	 * dd/MM/yyyy HH:mm
	 * @return
	 */
	public String getCreatedFormated() {
		return new SimpleDateFormat("dd/MM/yyyy HH:mm").format(getCreated());
	}
	
	/**
	 * retona a data de criacao no formato
	 * dd/MM/yyyy
	 * @return
	 */
	public String getCreatedDateFormated() {
		return new SimpleDateFormat("dd/MM/yyyy").format(getCreated());
	}
	
	/**
	 * retorna a hora de criacao do modelo formatado em
	 * HH:mm
	 * @return
	 */
	public String getCreatedTimeFormated() {
		return new SimpleDateFormat("HH:mm").format(getCreated());
	}
	
	/**
	 * retorna um timestamp com a atualização do modelo no formato 
	 * dd/MM/yyyy HH:mm
	 * @return
	 */
	public String getUpdatedFormated() {
		return new SimpleDateFormat("dd/MM/yyyy HH:mm").format(getUpdated());
	}
	
	/**
	 * retorna a data de atualização do modelo no formato 
	 * dd/MM/yyyy
	 * @return
	 */
	public String getUpdatedDateFormated() {
		return new SimpleDateFormat("dd/MM/yyyy").format(getUpdated());
	}
	
	/**
	 * retorna a hora de atualização do modelo no formato 
	 * HH:mm
	 * @return
	 */
	public String getUpdatedTimeFormated() {
		return new SimpleDateFormat("HH:mm").format(getUpdated());
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public String getMotivoInativacao() {
		return motivoInativacao;
	}

	public void setMotivoInativacao(String motivoInativacao) {
		this.motivoInativacao = motivoInativacao;
	}
	
	
	
	
}
