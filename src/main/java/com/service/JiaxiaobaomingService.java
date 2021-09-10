package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiaxiaobaomingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiaxiaobaomingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiaxiaobaomingView;


/**
 * 驾校报名
 *
 * @author 
 * @email 
 * @date 2021-03-22 11:03:20
 */
public interface JiaxiaobaomingService extends IService<JiaxiaobaomingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiaxiaobaomingVO> selectListVO(Wrapper<JiaxiaobaomingEntity> wrapper);
   	
   	JiaxiaobaomingVO selectVO(@Param("ew") Wrapper<JiaxiaobaomingEntity> wrapper);
   	
   	List<JiaxiaobaomingView> selectListView(Wrapper<JiaxiaobaomingEntity> wrapper);
   	
   	JiaxiaobaomingView selectView(@Param("ew") Wrapper<JiaxiaobaomingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiaxiaobaomingEntity> wrapper);
   	
}

