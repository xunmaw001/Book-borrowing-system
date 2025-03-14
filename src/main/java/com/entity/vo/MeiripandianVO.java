package com.entity.vo;

import com.entity.MeiripandianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 每日盘点
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
public class MeiripandianVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 图书分类
	 */
	
	private String tushufenlei;
		
	/**
	 * 数量
	 */
	
	private Integer shuliang;
		
	/**
	 * 盘点数量
	 */
	
	private Integer pandianshuliang;
		
	/**
	 * 差异数量
	 */
	
	private String chayishuliang;
		
	/**
	 * 差异说明
	 */
	
	private String chayishuoming;
		
	/**
	 * 盘点时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date pandianshijian;
				
	
	/**
	 * 设置：图书分类
	 */
	 
	public void setTushufenlei(String tushufenlei) {
		this.tushufenlei = tushufenlei;
	}
	
	/**
	 * 获取：图书分类
	 */
	public String getTushufenlei() {
		return tushufenlei;
	}
				
	
	/**
	 * 设置：数量
	 */
	 
	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}
	
	/**
	 * 获取：数量
	 */
	public Integer getShuliang() {
		return shuliang;
	}
				
	
	/**
	 * 设置：盘点数量
	 */
	 
	public void setPandianshuliang(Integer pandianshuliang) {
		this.pandianshuliang = pandianshuliang;
	}
	
	/**
	 * 获取：盘点数量
	 */
	public Integer getPandianshuliang() {
		return pandianshuliang;
	}
				
	
	/**
	 * 设置：差异数量
	 */
	 
	public void setChayishuliang(String chayishuliang) {
		this.chayishuliang = chayishuliang;
	}
	
	/**
	 * 获取：差异数量
	 */
	public String getChayishuliang() {
		return chayishuliang;
	}
				
	
	/**
	 * 设置：差异说明
	 */
	 
	public void setChayishuoming(String chayishuoming) {
		this.chayishuoming = chayishuoming;
	}
	
	/**
	 * 获取：差异说明
	 */
	public String getChayishuoming() {
		return chayishuoming;
	}
				
	
	/**
	 * 设置：盘点时间
	 */
	 
	public void setPandianshijian(Date pandianshijian) {
		this.pandianshijian = pandianshijian;
	}
	
	/**
	 * 获取：盘点时间
	 */
	public Date getPandianshijian() {
		return pandianshijian;
	}
			
}
