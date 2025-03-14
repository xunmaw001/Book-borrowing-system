package com.entity.view;

import com.entity.MeiripandianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 每日盘点
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
@TableName("meiripandian")
public class MeiripandianView  extends MeiripandianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public MeiripandianView(){
	}
 
 	public MeiripandianView(MeiripandianEntity meiripandianEntity){
 	try {
			BeanUtils.copyProperties(this, meiripandianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
