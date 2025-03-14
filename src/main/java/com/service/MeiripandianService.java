package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MeiripandianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MeiripandianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MeiripandianView;


/**
 * 每日盘点
 *
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
public interface MeiripandianService extends IService<MeiripandianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MeiripandianVO> selectListVO(Wrapper<MeiripandianEntity> wrapper);
   	
   	MeiripandianVO selectVO(@Param("ew") Wrapper<MeiripandianEntity> wrapper);
   	
   	List<MeiripandianView> selectListView(Wrapper<MeiripandianEntity> wrapper);
   	
   	MeiripandianView selectView(@Param("ew") Wrapper<MeiripandianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MeiripandianEntity> wrapper);
   	
}

