package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TushuchukuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TushuchukuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TushuchukuView;


/**
 * 图书出库
 *
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
public interface TushuchukuService extends IService<TushuchukuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TushuchukuVO> selectListVO(Wrapper<TushuchukuEntity> wrapper);
   	
   	TushuchukuVO selectVO(@Param("ew") Wrapper<TushuchukuEntity> wrapper);
   	
   	List<TushuchukuView> selectListView(Wrapper<TushuchukuEntity> wrapper);
   	
   	TushuchukuView selectView(@Param("ew") Wrapper<TushuchukuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TushuchukuEntity> wrapper);
   	
}

