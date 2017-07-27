package org.springside.examples.myframe.repository.jpa;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springside.examples.myframe.entity.Role;
import org.springside.examples.myframe.entity.User;

/**
 * RoleDao
 * 
 * @author liuhq
 * @since 2016年5月14日 下午2:37:29
 * @version 1.0
 */
public interface RoleDao extends PagingAndSortingRepository<Role, Long>,
		JpaSpecificationExecutor<Role> {

	Role findByName(String name);

}
