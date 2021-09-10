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
 * 驾校信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-22 11:03:20
 */
@TableName("jiaxiaoxinxi")
public class JiaxiaoxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JiaxiaoxinxiEntity() {
		
	}
	
	public JiaxiaoxinxiEntity(T t) {
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
	 * 驾校名称
	 */
					
	private String jiaxiaomingcheng;
	
	/**
	 * 驾照类型
	 */
					
	private String jiazhaoleixing;
	
	/**
	 * 联系人
	 */
					
	private String lianxiren;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 驾校照片
	 */
					
	private String jiaxiaozhaopian;
	
	/**
	 * 报名费用
	 */
					
	private Integer baomingfeiyong;
	
	/**
	 * 驾校地址
	 */
					
	private String jiaxiaodizhi;
	
	/**
	 * 驾校简介
	 */
					
	private String jiaxiaojianjie;
	
	/**
	 * 驾校详情
	 */
					
	private String jiaxiaoxiangqing;
	
	/**
	 * 赞
	 */
					
	private Integer thumbsupnum;
	
	/**
	 * 踩
	 */
					
	private Integer crazilynum;
	
	/**
	 * 最近点击时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date clicktime;
	
	/**
	 * 点击次数
	 */
					
	private Integer clicknum;
	
	
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
	 * 设置：驾校名称
	 */
	public void setJiaxiaomingcheng(String jiaxiaomingcheng) {
		this.jiaxiaomingcheng = jiaxiaomingcheng;
	}
	/**
	 * 获取：驾校名称
	 */
	public String getJiaxiaomingcheng() {
		return jiaxiaomingcheng;
	}
	/**
	 * 设置：驾照类型
	 */
	public void setJiazhaoleixing(String jiazhaoleixing) {
		this.jiazhaoleixing = jiazhaoleixing;
	}
	/**
	 * 获取：驾照类型
	 */
	public String getJiazhaoleixing() {
		return jiazhaoleixing;
	}
	/**
	 * 设置：联系人
	 */
	public void setLianxiren(String lianxiren) {
		this.lianxiren = lianxiren;
	}
	/**
	 * 获取：联系人
	 */
	public String getLianxiren() {
		return lianxiren;
	}
	/**
	 * 设置：联系电话
	 */
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
	/**
	 * 设置：驾校照片
	 */
	public void setJiaxiaozhaopian(String jiaxiaozhaopian) {
		this.jiaxiaozhaopian = jiaxiaozhaopian;
	}
	/**
	 * 获取：驾校照片
	 */
	public String getJiaxiaozhaopian() {
		return jiaxiaozhaopian;
	}
	/**
	 * 设置：报名费用
	 */
	public void setBaomingfeiyong(Integer baomingfeiyong) {
		this.baomingfeiyong = baomingfeiyong;
	}
	/**
	 * 获取：报名费用
	 */
	public Integer getBaomingfeiyong() {
		return baomingfeiyong;
	}
	/**
	 * 设置：驾校地址
	 */
	public void setJiaxiaodizhi(String jiaxiaodizhi) {
		this.jiaxiaodizhi = jiaxiaodizhi;
	}
	/**
	 * 获取：驾校地址
	 */
	public String getJiaxiaodizhi() {
		return jiaxiaodizhi;
	}
	/**
	 * 设置：驾校简介
	 */
	public void setJiaxiaojianjie(String jiaxiaojianjie) {
		this.jiaxiaojianjie = jiaxiaojianjie;
	}
	/**
	 * 获取：驾校简介
	 */
	public String getJiaxiaojianjie() {
		return jiaxiaojianjie;
	}
	/**
	 * 设置：驾校详情
	 */
	public void setJiaxiaoxiangqing(String jiaxiaoxiangqing) {
		this.jiaxiaoxiangqing = jiaxiaoxiangqing;
	}
	/**
	 * 获取：驾校详情
	 */
	public String getJiaxiaoxiangqing() {
		return jiaxiaoxiangqing;
	}
	/**
	 * 设置：赞
	 */
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
	/**
	 * 设置：踩
	 */
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
	/**
	 * 设置：最近点击时间
	 */
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
	/**
	 * 设置：点击次数
	 */
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}

}
