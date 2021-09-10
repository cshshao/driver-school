package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussjiakaohuhangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussjiakaohuhangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussjiakaohuhangView;


/**
 * 驾考护航评论表
 *
 * @author 
 * @email 
 * @date 2021-03-22 11:03:20
 */
public interface DiscussjiakaohuhangService extends IService<DiscussjiakaohuhangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussjiakaohuhangVO> selectListVO(Wrapper<DiscussjiakaohuhangEntity> wrapper);
   	
   	DiscussjiakaohuhangVO selectVO(@Param("ew") Wrapper<DiscussjiakaohuhangEntity> wrapper);
   	
   	List<DiscussjiakaohuhangView> selectListView(Wrapper<DiscussjiakaohuhangEntity> wrapper);
   	
   	DiscussjiakaohuhangView selectView(@Param("ew") Wrapper<DiscussjiakaohuhangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussjiakaohuhangEntity> wrapper);
   	
}

