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


import com.dao.MeiripandianDao;
import com.entity.MeiripandianEntity;
import com.service.MeiripandianService;
import com.entity.vo.MeiripandianVO;
import com.entity.view.MeiripandianView;

@Service("meiripandianService")
public class MeiripandianServiceImpl extends ServiceImpl<MeiripandianDao, MeiripandianEntity> implements MeiripandianService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MeiripandianEntity> page = this.selectPage(
                new Query<MeiripandianEntity>(params).getPage(),
                new EntityWrapper<MeiripandianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MeiripandianEntity> wrapper) {
		  Page<MeiripandianView> page =new Query<MeiripandianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<MeiripandianVO> selectListVO(Wrapper<MeiripandianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MeiripandianVO selectVO(Wrapper<MeiripandianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MeiripandianView> selectListView(Wrapper<MeiripandianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MeiripandianView selectView(Wrapper<MeiripandianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
