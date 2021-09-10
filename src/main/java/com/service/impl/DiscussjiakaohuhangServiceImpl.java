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


import com.dao.DiscussjiakaohuhangDao;
import com.entity.DiscussjiakaohuhangEntity;
import com.service.DiscussjiakaohuhangService;
import com.entity.vo.DiscussjiakaohuhangVO;
import com.entity.view.DiscussjiakaohuhangView;

@Service("discussjiakaohuhangService")
public class DiscussjiakaohuhangServiceImpl extends ServiceImpl<DiscussjiakaohuhangDao, DiscussjiakaohuhangEntity> implements DiscussjiakaohuhangService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussjiakaohuhangEntity> page = this.selectPage(
                new Query<DiscussjiakaohuhangEntity>(params).getPage(),
                new EntityWrapper<DiscussjiakaohuhangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussjiakaohuhangEntity> wrapper) {
		  Page<DiscussjiakaohuhangView> page =new Query<DiscussjiakaohuhangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussjiakaohuhangVO> selectListVO(Wrapper<DiscussjiakaohuhangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussjiakaohuhangVO selectVO(Wrapper<DiscussjiakaohuhangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussjiakaohuhangView> selectListView(Wrapper<DiscussjiakaohuhangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussjiakaohuhangView selectView(Wrapper<DiscussjiakaohuhangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
