package ${conf.daoPackage}<#if table.prefix!="">.${table.prefix}</#if>;

<#--
import java.util.List;
-->
import ${conf.entityPackage}<#if table.prefix!="">.${table.prefix}</#if>.${table.beanName};
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
/**
 * Author:   ${conf.author}
 * Date:     ${.now}
 * Description: ${table.beanName}Mapper
 */
@Mapper
public interface ${table.beanName}Mapper{

	
	 /**
     *  根据ID查找对应的记录
     */
	${table.beanName} queryInfoById(Long id);
	
	 /**
     *  查询总条数
     */
	int selectCount();
	
	
	/**
     *  按照条件查询
     */
	List<${table.beanName}> selectByCondition(${table.beanName} entity);
	
	/**
     *  按照条件查询记录对应的条数
     */
	int selectCountByCondition(${table.beanName} entity);
	
	/**
     *  按照id更新
     */
	int updateById(${table.beanName} entity);

	/**
     *  按照id删除
     */
	int deleteById(int id);

	/**
     *  新增
     */
	int insert(${table.beanName} entity);
	
	/**
     *  按照集合新增
     */
	int insertList(List<${table.beanName}> entityList);
	
	
	/**
     *  获取全部的数据
     */
	List<${table.beanName}>  getList();




}