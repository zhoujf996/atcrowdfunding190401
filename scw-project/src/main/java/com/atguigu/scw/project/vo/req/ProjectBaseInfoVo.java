package com.atguigu.scw.project.vo.req;

import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class ProjectBaseInfoVo extends BaseVo {

	@ApiModelProperty("项目之前的临时token")
	private String projectToken;// 项目的临时token

	@ApiModelProperty("项目的分类id")
	private List<Integer> typeids; // 项目的分类id 
	@ApiModelProperty("项目的标签id")
	private List<Integer> tagids; // 项目的标签id 

	@ApiModelProperty("项目名称")
	private String name;
	@ApiModelProperty("项目简介")
	private String remark;
	@ApiModelProperty("筹资金额")
	private Long money;
	@ApiModelProperty("筹资天数")
	private Integer day;

	@ApiModelProperty("项目头部图片")
	private String headerImage;// 项目头部图片 
	@ApiModelProperty("项目详情图片")
	private List<String> detailsImage;// 项目详情图片

	// 确认信息（请填写易付宝企业账号用于收款及身份核实）

}
