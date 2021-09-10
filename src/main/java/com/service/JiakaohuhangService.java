package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiakaohuhangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiakaohuhangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiakaohuhangView;


/**
 * 驾考护航
 *
 * @author 
 * @email 
 * @date 2021-03-22 11:03:20
 */
public interface JiakaohuhangService extends IService<JiakaohuhangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiakaohuhangVO> selectListVO(Wrapper<JiakaohuhangEntity> wrapper);
   	
   	JiakaohuhangVO selectVO(@Param("ew") Wrapper<JiakaohuhangEntity> wrapper);
   	
   	List<JiakaohuhangView> selectListView(Wrapper<JiakaohuhangEntity> wrapper);
   	
   	JiakaohuhangView selectView(@Param("ew") Wrapper<JiakaohuhangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiakaohuhangEntity> wrapper);
   	
}

