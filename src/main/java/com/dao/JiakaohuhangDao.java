package com.dao;

import com.entity.JiakaohuhangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiakaohuhangVO;
import com.entity.view.JiakaohuhangView;


/**
 * 驾考护航
 * 
 * @author 
 * @email 
 * @date 2021-03-22 11:03:20
 */
public interface JiakaohuhangDao extends BaseMapper<JiakaohuhangEntity> {
	
	List<JiakaohuhangVO> selectListVO(@Param("ew") Wrapper<JiakaohuhangEntity> wrapper);
	
	JiakaohuhangVO selectVO(@Param("ew") Wrapper<JiakaohuhangEntity> wrapper);
	
	List<JiakaohuhangView> selectListView(@Param("ew") Wrapper<JiakaohuhangEntity> wrapper);

	List<JiakaohuhangView> selectListView(Pagination page,@Param("ew") Wrapper<JiakaohuhangEntity> wrapper);
	
	JiakaohuhangView selectView(@Param("ew") Wrapper<JiakaohuhangEntity> wrapper);
	
}
