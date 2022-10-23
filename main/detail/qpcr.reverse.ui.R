tabPanel(
  "反转录计算",
  br(),
  # 参数设置
  column(
    width = 2,
    style = "height:550px;background-color:lavender;border-radius: 10px",
    # title
    # h5("Parameter Setting", align = "center"),
    # HTML("<hr style='background-color: #282828'>"),
    # upload file
    fileInput(
      "uploadfile.qpcr.reverse",
      label = h5("上传数据", align = "center"),
      # label = HTML('<h6 style="text-align:right">Upload file</h6>'),
      accept = NULL,
      buttonLabel = "浏览...",
      width = "100%"
    ),
    # 下载示例数据
    # HTML("&nbsp;"),
    column(
      width = 12,
      downloadButton(
        "download.qpcr.reverse.demo",
        label = "下载示例数据"
      ) %>%
        tags$div(align = "center")
    ),
    HTML("&nbsp;"),
    # downloadLink(
    #   "download.demo.qpcr.reverse",
    #   label = h5("下载示例数据")
    # ),
    # 反转录体积
    textInput(
      "volume.qpcr.reverse",
      label = h5("反转录体积"),
      value = "2"
    ),
    # 提交按钮
    column(
      width = 12,
      actionButton(
        "submit.qpcr.reverse",
        label = "点击开始计算",
        icon = icon("arrow-up")
      ) %>%
        tags$div(align = "center", style = "padding-right:0em;")
    ),
    HTML("&nbsp;"),
    column(
      width = 12,
      downloadButton(
        "download.qpcr.reverse.table",
        label = "下载结果表格"
      ) %>%
        tags$div(align = "center")
    ),
    # 导入图片
    HTML("&nbsp;"),
    br(),
    br(),
    br(),
    br(),
    column(
      width = 12,
      br(),
      tags$img(
        src = "image/qpcr.reverse.ui.png",
        width = "160px",
        height = "100px"
      ),
      br(),
    )
  ),
  # # 空一列
  # column(
  #   width = 1
  # ),

  # 输出结果
  # hr(),
  column(
    width = 10,
    tags$style(".fa-database {color:#E87722}"),
    h3(p(em("计算结果 "),
      icon("database",
        lib = "font-awesome"
      ),
      style = "color:black;text-align:center"
    )),
    fluidRow(
      column(
        width = 12,
        DT::dataTableOutput("res.qpcr.reverse"),
      )
    )
  )
  # ,
  #
  # hr(),
  # p(em("Developed by"),
  #   a(href = "https://www.web4xiang.top/", "Xiang LI", target = "_blank"),
  #   style = "text-align:center; font-family: times")
)
