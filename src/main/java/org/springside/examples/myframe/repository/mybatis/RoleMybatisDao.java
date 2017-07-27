package org.springside.examples.myframe.repository.mybatis;

import java.util.List;
import java.util.Map;
import org.springside.examples.myframe.entity.Role;

/**
 * 通过@MapperScannerConfigurer扫描目录中的所有接口, 动态在Spring Context中生成实现.
 * 方法名称必须与Mapper.xml中保持一致.
 * 
 * @author liuhq
 * @since 2016年5月14日 下午12:02:53
 * @version 1.0
 */
@MyBatisRepository
public interface RoleMybatisDao {

	Role get(Long id);

	List<Role> search(Map<String, Object> parameters);

	void save(Role role);

	void delete(Long id);
}
