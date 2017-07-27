package org.springside.examples.myframe.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * 主键
 * 
 * @author liuhq
 * @since 2016年5月14日 下午2:36:24
 * @version 1.0
 */
@MappedSuperclass
public abstract class IdEntity {

	protected Long id;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
}
