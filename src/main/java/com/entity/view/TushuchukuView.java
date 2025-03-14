package com.entity.view;

import com.entity.TushuchukuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 图书出库
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
@TableName("tushuchuku")
public class TushuchukuView  extends TushuchukuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public TushuchukuView(){
	}
 
 	public TushuchukuView(TushuchukuEntity tushuchukuEntity){
 	try {
			BeanUtils.copyProperties(this, tushuchukuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
