#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")

// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  //header-center: true,

  // 如果不需要头像，则将下面三行的参数注释或删除
  photograph: "../2.jpg",
  photograph-width: 10em,
  gutter-width: 2em,
)[
  = 刘畅

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 186-0862-0020",
    ),
    (
      icon: fa-envelope,
      content: "12432779@mail.sustech.edu.cn",
      link: "mailto:12432779@mail.sustech.edu.cn",
    ),
    (
      icon:  fa-building-columns,
      content: "南方科技大学 · 海洋科学与工程系",
    ),
    (
      icon:fa-award,
      content: "政治面貌：中共党员",
    ),
    (
      icon:fa-wrench,
      content: "技能摘要：SolidWorks、Matlab、CAD、PS、Python、Linux",
    ),
    (
      icon:fa-work,
      content: "求职意向：图像处理实习生",
    ),
  )

  
][
  #h(2em)


个人优势：具备工程技术问题分析、算法验证与系统落地经验，能基于数据和实验结果定位问题并推动方案迭代；有图像识别和结构设计经历；了解亮度、对比度、色彩空间等图像处理相关概念，愿意进一步深入显示算法和画质调优方向。
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2024.09\
  
   至今
][
  *南方科技大学* · 海洋科学与工程系 · 资源与环境（硕士） GPA: 3.57 / 4 · Rank: 30%

  现代信号分析与数据处理、现代大地测量技术、海洋地球物理前沿等课程

  
]
#sidebar(with-line: true, side-width: 12%)[

  2020.09

  2024.06
][

  *青岛大学* · 机电工程学院 · 机械工程（本科） GPA: 3.42 / 4 · Rank: 15%

  机械原理、机械设计、材料力学、理论力学、互换性、控制工程基础等课程
]

== #fa-work	 实习经历
#item(
  link(
    "https://github.com/liming-dev/cloud-platform",

    [ *影石创新科技股份有限公司* ],

  ),

  [ *测试开发实习生* ],
  date[ 2026 年 05 月 – 至今 ],
)

//#tech[ Golang, Docker, Kubernetes ]

手持线自动剪辑算法测试开发实习生：设计测试方案、编写测试脚本、执行测试用例、分析测试结果，推动算法性能提升和系统稳定性优化；同时参与项目需求讨论和技术交流，积累了实际项目开发与团队协作经验。




== #fa-code 项目经历
#item(
  link(
    "https://github.com/liming-dev/cloud-platform",
    [ *SSRB-UNet：桥梁表观病害语义分割* ],
  ),
  [ *科研项目* ],
    date[ 2025 年 07 月 – 2026 年 01 月 ],
)




- 在 U-Net 框架基础上参与设计 SSRB 模块，结合全局依赖建模与局部纹理提取思路，增强模型对细粒度缺陷和多尺度目标的表征能力
- 独立完成数据整理、模型训练、对比实验、消融实验及结果可视化分析，系统评估不同结构设计对分割效果的影响
- 最终模型在 S2DS 测试集上取得 76.32% mIoU、85.81% F1-score，较基线模型有明显提升，完成论文实验支撑与结果整理


#item(
  link(
    "https://github.com/liming-dev/cloud-platform",
    [ *基于 DeepLabV3+ 的腐蚀图像分割* ],
  ),
  [ *横向课题* ],
  date[ 2025 年 03 月 – 2025 年 09 月 ],
)



- 基于 DeepLabV3+ 搭建腐蚀区域分割流程，完成图像预处理、数据标注整理、训练测试及结果分析，逐步建立从原始图像到缺陷区域输出的完整处理链路
- 使用 OpenCV 等工具开展图像处理与可视化分析，对腐蚀区域分布、缺陷形态及识别结果进行整理，为后续评估与报告输出提供依据
- 形成较完整的腐蚀图像检测方案认知，并参与技术文档与专利材料撰写，支撑项目方案沉淀与工程表达


#item(
  link(
    "https://github.com/liming-dev/cloud-platform",
    [ *基于 YOLO 的工地安全巡检视觉识别系统* ],
  ),
  [ *横向课题* ],
    date[ 2025 年 04 月 – 2026 年 01 月 ],
)



- 基于 YOLO 系列目标检测模型，完成未佩戴安全帽、电线暴露、临边风险等典型目标的识别流程搭建，参与数据整理、模型训练及检测结果分析
- 结合项目落地需求，负责部分视觉相关结构件设计与设备集成，使用 SolidWorks 完成建模、打印与装配，推动算法模块与硬件载体联动实现
- 最终形成从视觉检测到设备集成的项目参与经验，提升了对实际场景图像识别任务、系统协同理解


== #fa-building-columns 校园经历

#item(

  link(
    "https://github.com/liming-dev/cloud-platform",
     [ *海洋科学与工程系研会部长* ],
  ),
 
  [ *南方科技大学* ],
  date[ 2024 年 09 月 – 2025 年 09 月 ],
)

负责活动方案制定、场地与物资协调，确保活动顺利执行；同时承担活动现场拍摄与素材后期整理。


-方科技大学优秀学生、特等助研、海洋系羽毛球团体冠军、摄影比赛二等奖