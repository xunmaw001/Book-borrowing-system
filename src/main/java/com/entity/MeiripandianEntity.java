package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 每日盘点
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-12 12:42:40
 */
@TableName("meiripandian")
public class MeiripandianEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public MeiripandianEntity() {
		
	}
	
	public MeiripandianEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 图书名称
	 */
					
	private String tushumingcheng;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：图书名称
	 */
	public void setTushumingcheng(String tushumingcheng) {
		this.tushumingcheng = tushumingcheng;
	}
	/**
	 * 获取：图书名称
	 */
	public String getTushumingcheng() {
		return tushumingcheng;
	}
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
