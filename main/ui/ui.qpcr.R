tabPanel(
  "qPCR相关",
  tabsetPanel(
    # 反转录
    source("./main/detail/qpcr.reverse.ui.R", local = TRUE, encoding = "UTF-8")$value
    # tabPanel(
    #   "Demo",
    #   br(),
    #   sidebarLayout(
    #     sidebarPanel(
    #       p("Is there a linear relationship between the response variable and this independent variable? no? then:", style = "color:black;text-align:justify"),
    #       tags$style(HTML(".js-irs-1 .irs-single, .js-irs-1 .irs-bar-edge, .js-irs-1 .irs-bar {background: coral; border-top: 1px coral; border-bottom: 1px coral;border-left: 1px coral}")),
    #       tags$style(HTML(".js-irs-1 .irs-max, .js-irs-1 .irs-min {background:papayawhip}")),
    #       sliderInput("Transformacion1", p("Try power transformations to achieve the linear relationship we are looking for"),
    #         value = 1,
    #         min = -3,
    #         max = 3,
    #         step = 0.01
    #       ),
    #       br(),
    #       column(
    #         br(),
    #         tags$head(tags$style("#correlacion1{color: black;
    #                                                                     font-size: 15px;
    #                                                                     text-align: center;
    #                                                                     }")),
    #         textOutput("correlacion1"),
    #         br(),
    #         p("This coefficient is a measure of the strength and direction of the linear relationship, so we want to achieve a coefficient closer to |1|", style = "color:black;text-align:justify"),
    #         br(),
    #         width = 12, style = "background-color:papayawhip;border-left:8px solid coral;border-top:1px solid black;border-bottom:1px solid black;border-right: 1px solid black"
    #       ),
    #       br(),
    #       br(),
    #       br(),
    #       br(),
    #       br(),
    #       br(),
    #       br(),
    #       br()
    #     ),
    #     mainPanel(column(plotOutput("Dispersion1"), width = 12, style = "border:1px solid black"))
    #   ),
    #   br()
    # ),
    # tabPanel(
    #   "Setting",
    #   br(),
    #   # 参数设置
    #   column(
    #     width = 6,
    #     style = "height:550px;background-color:lavender;border-radius: 10px",
    #     # title
    #     # h5("Parameter Setting", align = "center"),
    #     # HTML("<hr style='background-color: #282828'>"),
    #     # upload file
    #     fileInput(
    #       "uploadfile.go",
    #       label = h5("Upload", align = "center"),
    #       # label = HTML('<h6 style="text-align:right">Upload file</h6>'),
    #       accept = ".txt",
    #       buttonLabel = "View...",
    #       width = "96%"
    #     ),
    #     # 物种选择+id类型
    #     splitLayout(
    #       cellWidths = c("50%", "50%"),
    #       # species id
    #       textInput(
    #         "speciesid.go",
    #         label = h5("Species ID"),
    #         value = "1"
    #       ),
    #       # id type
    #       selectInput(
    #         "id.type.go",
    #         label = h5("ID type"),
    #         choices = list(
    #           "Gene" = "gene",
    #           "mRNA" = "mrna"
    #         ),
    #         selected = "gene"
    #       )
    #     ),
    #     #
    #     splitLayout(
    #       cellWidths = c("50%", "50%"),
    #       # pvalue cutoff
    #       numericInput(
    #         "pvalue.go",
    #         label = h5("Pvalue cutoff"),
    #         min = 0,
    #         max = 1,
    #         step = 0.1,
    #         value = 0.05
    #       ),
    #       # qvalue
    #       numericInput(
    #         "qvalue.go",
    #         label = h5("qvalue cutoff"),
    #         min = 0,
    #         max = 1,
    #         step = 0.01,
    #         value = 0.05
    #       )
    #     ),
    #     splitLayout(
    #       cellWidths = c("50%", "50%"),
    #       # min genes
    #       numericInput(
    #         "min.gene.go",
    #         label = h5("minGene"),
    #         value = 10
    #       ),
    #       # max genes
    #       numericInput(
    #         "max.gene.go",
    #         label = h5("maxGene"),
    #         value = NULL
    #       )
    #     ),
    # 
    #     # adjust method
    #     selectInput(
    #       "adjust.method.go",
    #       label = h5("Pvalue adjust method"),
    #       width = "98%",
    #       choices = list(
    #         "holm" = "holm",
    #         "hochberg" = "hochberg",
    #         "hommel" = "hochberg",
    #         "bonferroni" = "bonferroni",
    #         "BH" = "BH",
    #         "BY" = "BY",
    #         "fdr" = "fdr",
    #         "none" = "none"
    #       ),
    #       selected = "BH"
    #     ),
    #     splitLayout(
    #       cellWidths = c("50%", "50%"),
    #       # download example
    #       downloadBttn(
    #         "downlaod.example.go",
    #         size = "sm",
    #         style = "float",
    #         label = "Download example of input for GO" # ,icon = icon("arrow-down")
    #       ),
    #       # submit
    #       actionButton(
    #         "upload.setting.go",
    #         width = "96%",
    #         label = "Submit",
    #         icon = icon("arrow-up")
    #       ),
    #     ),
    #     br(),
    #   ),
    #   # # 空一列
    #   # column(
    #   #   width = 1
    #   # ),
    #   # 输出选择物种的图片
    #   column(
    #     width = 6,
    #     style = "height:550px;border-radius: 10px",
    #     uiOutput(
    #       "go.species.image"
    #     )
    #   ),
    #   br()
    # ),
    # hr(),

    # # 输出结果表格
    # tabPanel(
    #   "Table",
    #   br(),
    #   column(
    #     width = 2,
    #     style = "background-color:lavender;border-radius: 10px",
    #     # title
    #     h4("Parameter Setting", align = "center"),
    #     HTML("<hr style='background-color: #282828'>"),
    #     selectInput(
    #       "table.type.go",
    #       label = h5("Output file format"),
    #       choices = list(
    #         "Excel" = "excel",
    #         "TXT" = "txt",
    #         "CSV" = "csv"
    #       ),
    #       selected = "excel"
    #     ),
    #     # col names
    #     selectInput(
    #       "save.colname.go",
    #       label = h5("Save column names"),
    #       choices = list(
    #         "Yes" = "yes",
    #         "No" = "No"
    #       ),
    #       selected = "yes"
    #     ),
    # 
    #     # ronam names
    #     selectInput(
    #       "save.rowname.go",
    #       label = h5("Save row names"),
    #       choices = list(
    #         "Yes" = "yes",
    #         "No" = "no"
    #       ),
    #       selected = "no"
    #     ),
    # 
    #     # submit
    #     actionButton(
    #       "upload.table.go",
    #       width = "95%",
    #       label = "Submit",
    #       icon = icon("arrow-up")
    #     ),
    #     br(),
    #     br(),
    # 
    #     # download
    #     downloadButton(
    #       "download.tab.go",
    #       label = h5("Download table"),
    #       style = "width:95%;"
    #     ),
    #     br(),
    #     br()
    #   ),
    #   column(width = 1),
    #   # 表格预览
    #   column(
    #     width = 9, # ,style = "border:1px solid black;border-radius: 10px",
    #     DT::dataTableOutput(
    #       "go.res.table"
    #     )
    #   )
    # ),

    # # 绘图结果表格
    # tabPanel(
    #   "Plot",
    #   column(
    #     width = 2,
    #     style = "height:560px;background-color:lavender;border-radius: 10px",
    #     # order by
    #     selectInput(
    #       "order.by.go",
    #       label = h5("Order by"),
    #       choices = list(
    #         "GeneRatio" = "GeneRatio",
    #         "GeneRatio + group" = "GeneRatiog",
    #         "pvalue" = "pvalue",
    #         "pvalue + group" = "pvalueg",
    #         "qvalue" = "qvalue",
    #         "qvalue + group" = "qvalueg"
    #       ),
    #       selected = "GeneRatio"
    #     ),
    #     # figure type
    #     selectInput(
    #       "plottypego",
    #       label = h5("Figure type"),
    #       choices = list(
    #         "Bar" = "bar",
    #         "Point" = "point"
    #       ),
    #       selected = "bar"
    #     ),
    #     # 根据上一步选择fill还是color
    #     conditionalPanel(
    #       condition = "input.plottypego == 'bar'",
    # 
    #       # fill by
    #       selectInput(
    #         "fill.by.go",
    #         label = h5("Fill by"),
    #         choices = list(
    #           "GeneRatio" = "GeneRatio",
    #           "pvalue" = "pvalue",
    #           "qvalue" = "qvalue"
    #         ),
    #         selected = "qvalue"
    #       ),
    #       # fill color low
    #       colourInput(
    #         "low.fill.go",
    #         label = h5("Fill color for min"),
    #         "blue",
    #         returnName = TRUE,
    #         closeOnClick = TRUE
    #       ),
    #       # fill color max
    #       colourInput(
    #         "max.fill.go",
    #         label = h5("Fill color for max"),
    #         "red",
    #         returnName = TRUE,
    #         closeOnClick = TRUE
    #       ),
    #     ),
    #     conditionalPanel(
    #       condition = "input.plottypego == 'point'",
    #       # color by
    #       selectInput(
    #         "color.by.go",
    #         label = h5("Color by"),
    #         choices = list(
    #           "GeneRatio" = "GeneRatio",
    #           "pvalue" = "pvalue",
    #           "qvalue" = "qvalue"
    #         ),
    #         selected = "qvalue"
    #       ),
    #       # fill color low
    #       colourInput(
    #         "low.color.go",
    #         label = h5("Color for min"),
    #         "blue",
    #         returnName = TRUE,
    #         closeOnClick = TRUE
    #       ),
    #       # fill color max
    #       colourInput(
    #         "max.color.go",
    #         label = h5("Color for max"),
    #         "red",
    #         returnName = TRUE,
    #         closeOnClick = TRUE
    #       ),
    #     ),
    #     # legend posi
    #     selectInput(
    #       "legend.posi.go",
    #       label = h5("Legend position"),
    #       choices = list(
    #         "Right" = "right",
    #         "Left" = "left",
    #         "Top" = "top",
    #         "Bottom" = "bottom"
    #       ),
    #       selected = "right"
    #     ),
    #     br(),
    #     br()
    #   ),
    #   column(width = 1),
    #   # 导出图形参数
    #   column(
    #     width = 2,
    #     style = "height:560px;background-color:lavender;border-radius: 10px",
    # 
    #     # 输出类型
    #     selectInput(
    #       "out.fig.type.go",
    #       label = h5("Output figure type"),
    #       choices = list(
    #         "PDF" = "pdf",
    #         "PNG" = "png",
    #         "TIFF" = "tiff",
    #         "JPG/JPEG" = "jpg",
    #         "PPT" = "pptx"
    #       ),
    #       selected = "pdf"
    #     ),
    # 
    #     # width of figire
    #     numericInput(
    #       "width.plot.go",
    #       label = h5("Width of figire"),
    #       min = 1,
    #       max = 20,
    #       step = 1,
    #       value = 8
    #     ),
    #     # height of figire
    #     numericInput(
    #       "height.plot.go",
    #       label = h5("Height of figire"),
    #       min = 1,
    #       max = 20,
    #       step = 1,
    #       value = 8
    #     ),
    #     # dpi of figure
    #     numericInput(
    #       "dpi.plot.go",
    #       label = h5("DPI"),
    #       min = 100,
    #       max = 1000,
    #       step = 50,
    #       value = 300
    #     ),
    #     br(),
    #     # submit
    #     actionButton(
    #       "upload.plot.go",
    #       width = "95%",
    #       label = "Submit",
    #       icon = icon("arrow-up")
    #     ),
    #     br(),
    #     br(),
    #     br(),
    #     # 下载 图片
    #     downloadButton(
    #       "downlaod.plot.go",
    #       label = h5("Download plot"),
    #       style = "width:96%;"
    #     )
    #   ),
    #   # # 空一列
    #   # column(
    #   #   width = 1
    #   # ),
    #   # 展示图
    #   column(
    #     width = 7,
    #     # style = "height:560px; border:1px solid black;border-radius: 10px",
    #     # plotOutput("plot.go")
    #     uiOutput(
    #       "plot.go"
    #     )
    #   )
    # )
  )
)
