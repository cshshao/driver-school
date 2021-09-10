package com.dao;

import com.entity.DiscussjiakaohuhangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussjiakaohuhangVO;
import com.entity.view.DiscussjiakaohuhangView;


/**
 * 驾考护航评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-22 11:03:20
 */
public interface DiscussjiakaohuhangDao extends BaseMapper<DiscussjiakaohuhangEntity> {
	
	List<DiscussjiakaohuhangVO> selectListVO(@Param("ew") Wrapper<DiscussjiakaohuhangEntity> wrapper);
	
	DiscussjiakaohuhangVO selectVO(@Param("ew") Wrapper<DiscussjiakaohuhangEntity> wrapper);
	
	List<DiscussjiakaohuhangView> selectListView(@Param("ew") Wrapper<DiscussjiakaohuhangEntity> wrapper);

	List<DiscussjiakaohuhangView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussjiakaohuhangEntity> wrapper);
	
	DiscussjiakaohuhangView selectView(@Param("ew") Wrapper<DiscussjiakaohuhangEntity> wrapper);
	
}
