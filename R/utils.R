update_slides <- function(){
  nomsg_fun({
    out_html <- rmarkdown::render("slides/rmarkdown-intro.Rmd", quiet = TRUE)
    out_pdf <- pagedown::chrome_print(out_html)
  })
  cli::cli_alert_success("Slides updated!")
}

nomsg_fun <- function(expr){
  suppressMessages(
    suppressWarnings(
      suppressPackageStartupMessages(
        expr
      )
    )
  )
}
