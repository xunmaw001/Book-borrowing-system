package com.dao;

import com.entity.MeiripandianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MeiripandianVO;
import com.entity.view.MeiripandianView;


/**
 * 每日盘点
 * 
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
public interface MeiripandianDao extends BaseMapper<MeiripandianEntity> {
	
	List<MeiripandianVO> selectListVO(@Param("ew") Wrapper<MeiripandianEntity> wrapper);
	
	MeiripandianVO selectVO(@Param("ew") Wrapper<MeiripandianEntity> wrapper);
	
	List<MeiripandianView> selectListView(@Param("ew") Wrapper<MeiripandianEntity> wrapper);

	List<MeiripandianView> selectListView(Pagination page,@Param("ew") Wrapper<MeiripandianEntity> wrapper);
	
	MeiripandianView selectView(@Param("ew") Wrapper<MeiripandianEntity> wrapper);
	
}
