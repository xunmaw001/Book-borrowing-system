package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.FajinjiaonaDao;
import com.entity.FajinjiaonaEntity;
import com.service.FajinjiaonaService;
import com.entity.vo.FajinjiaonaVO;
import com.entity.view.FajinjiaonaView;

@Service("fajinjiaonaService")
public class FajinjiaonaServiceImpl extends ServiceImpl<FajinjiaonaDao, FajinjiaonaEntity> implements FajinjiaonaService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FajinjiaonaEntity> page = this.selectPage(
                new Query<FajinjiaonaEntity>(params).getPage(),
                new EntityWrapper<FajinjiaonaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FajinjiaonaEntity> wrapper) {
		  Page<FajinjiaonaView> page =new Query<FajinjiaonaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FajinjiaonaVO> selectListVO(Wrapper<FajinjiaonaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FajinjiaonaVO selectVO(Wrapper<FajinjiaonaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FajinjiaonaView> selectListView(Wrapper<FajinjiaonaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FajinjiaonaView selectView(Wrapper<FajinjiaonaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
