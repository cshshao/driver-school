package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JiakaohuhangDao;
import com.entity.JiakaohuhangEntity;
import com.service.JiakaohuhangService;
import com.entity.vo.JiakaohuhangVO;
import com.entity.view.JiakaohuhangView;

@Service("jiakaohuhangService")
public class JiakaohuhangServiceImpl extends ServiceImpl<JiakaohuhangDao, JiakaohuhangEntity> implements JiakaohuhangService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiakaohuhangEntity> page = this.selectPage(
                new Query<JiakaohuhangEntity>(params).getPage(),
                new EntityWrapper<JiakaohuhangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiakaohuhangEntity> wrapper) {
		  Page<JiakaohuhangView> page =new Query<JiakaohuhangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiakaohuhangVO> selectListVO(Wrapper<JiakaohuhangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiakaohuhangVO selectVO(Wrapper<JiakaohuhangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiakaohuhangView> selectListView(Wrapper<JiakaohuhangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiakaohuhangView selectView(Wrapper<JiakaohuhangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
