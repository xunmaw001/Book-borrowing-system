package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FajinjiaonaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FajinjiaonaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FajinjiaonaView;


/**
 * 罚金缴纳
 *
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
public interface FajinjiaonaService extends IService<FajinjiaonaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FajinjiaonaVO> selectListVO(Wrapper<FajinjiaonaEntity> wrapper);
   	
   	FajinjiaonaVO selectVO(@Param("ew") Wrapper<FajinjiaonaEntity> wrapper);
   	
   	List<FajinjiaonaView> selectListView(Wrapper<FajinjiaonaEntity> wrapper);
   	
   	FajinjiaonaView selectView(@Param("ew") Wrapper<FajinjiaonaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FajinjiaonaEntity> wrapper);
   	
}

