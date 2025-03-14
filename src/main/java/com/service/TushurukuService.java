package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TushurukuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TushurukuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TushurukuView;


/**
 * 图书入库
 *
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
public interface TushurukuService extends IService<TushurukuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TushurukuVO> selectListVO(Wrapper<TushurukuEntity> wrapper);
   	
   	TushurukuVO selectVO(@Param("ew") Wrapper<TushurukuEntity> wrapper);
   	
   	List<TushurukuView> selectListView(Wrapper<TushurukuEntity> wrapper);
   	
   	TushurukuView selectView(@Param("ew") Wrapper<TushurukuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TushurukuEntity> wrapper);
   	
}

