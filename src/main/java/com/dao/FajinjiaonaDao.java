package com.dao;

import com.entity.FajinjiaonaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FajinjiaonaVO;
import com.entity.view.FajinjiaonaView;


/**
 * 罚金缴纳
 * 
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
public interface FajinjiaonaDao extends BaseMapper<FajinjiaonaEntity> {
	
	List<FajinjiaonaVO> selectListVO(@Param("ew") Wrapper<FajinjiaonaEntity> wrapper);
	
	FajinjiaonaVO selectVO(@Param("ew") Wrapper<FajinjiaonaEntity> wrapper);
	
	List<FajinjiaonaView> selectListView(@Param("ew") Wrapper<FajinjiaonaEntity> wrapper);

	List<FajinjiaonaView> selectListView(Pagination page,@Param("ew") Wrapper<FajinjiaonaEntity> wrapper);
	
	FajinjiaonaView selectView(@Param("ew") Wrapper<FajinjiaonaEntity> wrapper);
	
}
