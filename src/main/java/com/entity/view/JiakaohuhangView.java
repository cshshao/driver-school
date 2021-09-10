package com.entity.view;

import com.entity.JiakaohuhangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 驾考护航
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-22 11:03:20
 */
@TableName("jiakaohuhang")
public class JiakaohuhangView  extends JiakaohuhangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiakaohuhangView(){
	}
 
 	public JiakaohuhangView(JiakaohuhangEntity jiakaohuhangEntity){
 	try {
			BeanUtils.copyProperties(this, jiakaohuhangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
