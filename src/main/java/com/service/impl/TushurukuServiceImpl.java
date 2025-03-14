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


import com.dao.TushurukuDao;
import com.entity.TushurukuEntity;
import com.service.TushurukuService;
import com.entity.vo.TushurukuVO;
import com.entity.view.TushurukuView;

@Service("tushurukuService")
public class TushurukuServiceImpl extends ServiceImpl<TushurukuDao, TushurukuEntity> implements TushurukuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TushurukuEntity> page = this.selectPage(
                new Query<TushurukuEntity>(params).getPage(),
                new EntityWrapper<TushurukuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TushurukuEntity> wrapper) {
		  Page<TushurukuView> page =new Query<TushurukuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TushurukuVO> selectListVO(Wrapper<TushurukuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TushurukuVO selectVO(Wrapper<TushurukuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TushurukuView> selectListView(Wrapper<TushurukuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TushurukuView selectView(Wrapper<TushurukuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
