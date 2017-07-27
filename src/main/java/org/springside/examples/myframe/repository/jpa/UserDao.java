package org.springside.examples.myframe.repository.jpa;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springside.examples.myframe.entity.User;

/**
 * UserDao
 * 
 * @author liuhq
 * @since 2016年5月14日 下午2:37:43
 * @version 1.0
 */
public interface UserDao extends PagingAndSortingRepository<User, Long>,
		JpaSpecificationExecutor<User> {

	User findByName(String name);

	User findByLoginName(String loginName);
}
