# 下载示例数据
output$download.qpcr.reverse.demo <- downloadHandler(
  filename = "反转录体积计算示例数据.tsv",
  content = function(file) {
    file.copy("./data/demo.data/反转录体积计算示例数据.tsv", file)
  }
)

# 参数设置界面提交成功显示
observeEvent(input$submit.qpcr.reverse, {
  sendSweetAlert(
    session = session,
    title = "正在计算中，请稍等......",
    type = "success"
  )
})

# 计算反转体积
observeEvent(input$submit.qpcr.reverse, {
  df.user.qpcr.reverse <- data.table::fread(
    input$uploadfile.qpcr.reverse$datapath,
    header = TRUE
  ) %>%
    dplyr::select("Sample ID", "Nucleic Acid", "260/280") %>%
    dplyr::rename(
      Sample = `Sample ID`,
      Conc = `Nucleic Acid`
    ) %>%
    dplyr::group_by(Sample) %>%
    dplyr::mutate(
      mean1 = mean(Conc),
      mean2 = mean(`260/280`)
    ) %>%
    dplyr::ungroup() %>%
    dplyr::mutate(
      RNA体积 = round(as.numeric(input$volume.qpcr.reverse) * 1000 / Conc, 2),
      Mix体积 = as.numeric(input$volume.qpcr.reverse) * 4,
      gDNARemover体积 = as.numeric(input$volume.qpcr.reverse),
      ddH2O体积 = 20 * as.numeric(input$volume.qpcr.reverse) - RNA体积 - Mix体积 - gDNARemover体积
    ) %>%
    dplyr::select(-Conc, -`260/280`) %>%
    dplyr::rename(
      浓度均值 = mean1,
      `260/280均值` = mean2
    ) %>%
    dplyr::filter(!duplicated(Sample)) %>%
    dplyr::rename(样品名称 = Sample)

  # 展示结果
  output$res.qpcr.reverse <- DT::renderDataTable(
    DT::datatable(
      df.user.qpcr.reverse,
      options = list(
        # lengthMenu = list(c(10, 20, 50,100), c("10", "20", "50","100")),
        pageLength = 8,
        initComplete = JS(
          "function(settings, json) {",
          "$(this.api().table().header()).css({'background-color': 'moccasin', 'color': '1c1b1b'});",
          "}"
        ),
        columnDefs = list(list(className = "dt-center", targets = "_all"))
      ),
      filter = "top",
      selection = "multiple",
      style = "bootstrap",
      class = "cell-border stripe",
      rownames = FALSE,
      escape = FALSE
    ) %>%
      formatRound(
        columns = c(
          "浓度均值", "260/280均值", "RNA体积",
          "Mix体积", "gDNARemover体积", "ddH2O体积"
        ),
        digits = 2
      )
  )

  # 下载结果
  output$download.qpcr.reverse.table <- downloadHandler(
    filename = function() {
      paste0(Sys.Date(), "-反转录计算结果.xlsx")
    },
    content = function(file) {
      df.user.qpcr.reverse %>%
        as.data.frame() %>%
        xlsx::write.xlsx(
          file,
          row.names = FALSE
        )
    }
  )
})
