package com.dao;

import com.entity.TushuchukuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.TushuchukuVO;
import com.entity.view.TushuchukuView;


/**
 * 图书出库
 * 
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
public interface TushuchukuDao extends BaseMapper<TushuchukuEntity> {
	
	List<TushuchukuVO> selectListVO(@Param("ew") Wrapper<TushuchukuEntity> wrapper);
	
	TushuchukuVO selectVO(@Param("ew") Wrapper<TushuchukuEntity> wrapper);
	
	List<TushuchukuView> selectListView(@Param("ew") Wrapper<TushuchukuEntity> wrapper);

	List<TushuchukuView> selectListView(Pagination page,@Param("ew") Wrapper<TushuchukuEntity> wrapper);
	
	TushuchukuView selectView(@Param("ew") Wrapper<TushuchukuEntity> wrapper);
	
}
