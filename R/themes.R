# Themes

# Theme functions -------------------------------------------------------------

#' Commons Library ggplot theme
#'
#' This ggplot theme implements the Commons Library chart style. The theme
#' offers various options for easily controlling plot settings so that you
#' don't need to resort to additional uses of the ggplot2 \code{theme} function
#' in most cases.
#'
#' The main arguments are \code{axes}, \code{grid}, \code{caption_position},
#' and \code{legend_positon}. Arguments are also available to set the color and
#' font properties of elements of the plot. You should not normally need to use
#' these arguments but they are provided for unusual cases.
#'
#' When creating plots using this theme, the title and subtitle elements should
#' not normally be set using ggplot2's \code{labs} function. This is because
#' the Commons Library chart style aligns the title and subtitle with the
#' left-hand edge of the y-axis text rather than the left-hand edge of the
#' plotting area.
#'
#' To set the title and subtitle using this theme, first create a plot in the
#' normal way, without specifying any title or subtitle in \code{labs} using
#' this theme function. Then use the \code{add_commonslib_titles} function to
#' add the title and subtitle elements. Using \code{add_commonslib_titles} also
#' has the benefit of correctly setting the distance between the bottom of the
#' title and the rest of the plot when no subtitle is needed.
#'
#' The arguments for controlling the properties of text elements in this
#' function include options for setting the properties for the title and
#' subtitle. These will control titles and subtitles that are set using the
#' ggplot2 \code{labs} function. As explained above, this is not the normal way
#' to set the title and subtitle of a plot when using this theme, but in some
#' cases you may want the default ggplot2 behaviour. You can separately
#' configure the properties of the title and subtitle in
#' \code{add_commonslib_titles} if you need to change the appearance of the
#' title elements when they are set in the recommended way.
#'
#' @param axes A string indicating which axes should have lines and ticks.
#'   Specify which axes to show by including the matching characters in the
#'   string: "t" for top, "r" for right, "b" for bottom, "l" for left. You will
#'   need to ensure this argument is consistent with the axes settings in your
#'   plot for the lines and ticks to be displayed. The default is "bl", meaning
#'   ticks and lines for the bottom and left axes are shown by default.
#' @param grid A string indicating which gridlines should be shown. Specify
#'   the gridlines to show by including the matching characters in the string:
#'   "h" for horizontal, "v" for vertical. The default is an empty string,
#'   meaning no gridlines are shown by default.
#' @param legend_position A string indicating the position of the legend. Valid
#'   positions are "top", "right", "bottom", "left", "top-right", "top-left",
#'   "bottom-right", "bottom-left", and "none". The default is "right".
#' @param caption_position A string indicating the horizontal position of the
#'   caption. Valid positions are "left" or "right". The default is "right".
#' @param title_family A string indicating the font-family to use for the
#'   title. The default is "National-LFSN Semibd".
#' @param subtitle_family A string indicating the font-family to use for the
#'   subtitle. The default is "National-LFSN Book".
#' @param axis_title_family A string indicating the font-family to use for
#'   axis titles. The default is "Open Sans".
#' @param axis_text_family A string indicating the font-family to use for
#'   axis text. The default is "Open Sans".
#' @param legend_title_family A string indicating the font-family to use for
#'   legend titles. The default is "Open Sans".
#' @param legend_text_family A string indicating the font-family to use for
#'   legend text. The default is "Open Sans".
#' @param facet_title_family A string indicating the font-family to use for
#'   facet titles. The default is "Open Sans".
#' @param caption_family A string indicating the font-family to use for
#'   captions. The default is "National-LFSN Book".
#' @param title_size An integer indicating the font size to use for the title
#'   in points. The default is 18 points.
#' @param subtitle_size An integer indicating the font size to use for the
#'   subtitle in points. The default is 14 points.
#' @param axis_title_size An integer indicating the font size to use for axis
#'   titles in points. The default is 11 points.
#' @param axis_text_size An integer indicating the font size to use for axis
#'   text in points. The default is 10 points.
#' @param legend_title_size An integer indicating the font size to use for
#'   legend titles in points. The default is 10 points.
#' @param legend_text_size An integer indicating the font size to use for
#'   legend text in points. The default is 10 points.
#' @param facet_title_size An integer indicating the font size to use for
#'   facet titles in points. The default is 10 points.
#' @param caption_size An integer indicating the font size to use for captions
#' in points. The default is 12 points.
#' @param title_color An RGB hex string indicating the color to use for the
#'   title. The default is "#006548".
#' @param subtitle_color An RGB hex string indicating the color to use for the
#'   subtitle. The default is "#006548".
#' @param axis_title_color An RGB hex string indicating the color to use for
#'   axis titles. The default is "#404040".
#' @param axis_text_color An RGB hex string indicating the color to use for
#'   axis text. The default is "#404040".
#' @param legend_title_color An RGB hex string indicating the color to use for
#'   legend titles. The default is "#404040".
#' @param legend_text_color An RGB hex string indicating the color to use for
#'   legend text. The default is "#404040".
#' @param facet_title_color An RGB hex string indicating the color to use for
#'   facet titles. The default is "#404040".
#' @param caption_color An RGB hex string indicating the color to use for
#'   captions. The default is "#404040".
#' @param background_color An RGB hex string indicating the color to use for
#'   the background. The default is "#f0eeed".
#' @param axis_line_color An RGB hex string indicating the color to use for
#'   the axis lines. The default is "#a6a6a6".
#' @param grid_color An RGB hex string indicating the color to use for the
#'   gridlines. The default is "#dad5d1".
#' @return A ggplot2 theme that implements the Commons Library style.
#' @export

theme_commonslib <- function (
    axes = "bl",
    grid = "",
    legend_position = "right",
    caption_position = "right",
    title_family = "National-LFSN Semibd",
    subtitle_family = "National-LFSN Book",
    axis_title_family = "Open Sans",
    axis_text_family = "Open Sans",
    legend_title_family = "Open Sans",
    legend_text_family = "Open Sans",
    facet_title_family = "Open Sans",
    caption_family = "National-LFSN Book",
    title_size = 18,
    subtitle_size = 14,
    axis_title_size = 11,
    axis_text_size = 10,
    legend_title_size = 10,
    legend_text_size = 10,
    facet_title_size = 10,
    caption_size = 12,
    title_color = "#006548",
    subtitle_color = "#006548",
    axis_title_color = "#404040",
    axis_text_color = "#404040",
    legend_title_color = "#404040",
    legend_text_color = "#404040",
    facet_title_color = "#404040",
    caption_color = "#404040",
    background_color = "#f0eeed",
    axis_line_color = "#a6a6a6",
    grid_color = "#dad5d1") {

    # Set the caption horizontal justification
    if (stringr::str_detect(caption_position, "left")) {
        caption_hjust = 0
    } else if (stringr::str_detect(caption_position, "right")) {
        caption_hjust = 1
    } else {
        stop("The caption_position should be \"left\" or \"right\"")
    }

    # Baseline theme
    theme_commonslib <- ggplot2::theme(
            plot.background = ggplot2::element_rect(
                fill = background_color,
                size = 0),
            plot.margin = ggplot2::margin(
                t = 18,
                r = 18,
                b = 18,
                l = 18, unit = "pt"),
            plot.title = ggplot2::element_text(
                family = title_family,
                color = title_color,
                face = "plain",
                hjust = 0,
                size = title_size,
                margin = ggplot2::margin(
                    t = 0,
                    r = 0,
                    b = 7,
                    l = 0, unit = "pt")),
            plot.subtitle = ggplot2::element_text(
                family = subtitle_family,
                color = subtitle_color,
                face = "plain",
                hjust = 0,
                size = subtitle_size,
                margin = ggplot2::margin(
                    t = 0,
                    r = 0,
                    b = 18,
                    l = 0, unit = "pt")),
            plot.caption = ggplot2::element_text(
                family = caption_family,
                color = caption_color,
                hjust = caption_hjust,
                size = caption_size,
                margin = ggplot2::margin(
                    t = 18,
                    r = 0,
                    b = 0,
                    l = 0, unit = "pt")),
            plot.caption.position = "plot",
            panel.spacing = ggplot2::unit(20, "pt"),
            panel.border = ggplot2::element_blank(),
            panel.background = ggplot2::element_blank(),
            panel.grid = ggplot2::element_blank(),
            panel.grid.major = ggplot2::element_blank(),
            panel.grid.minor = ggplot2::element_blank(),
            axis.line = ggplot2::element_blank(),
            axis.line.x.top = ggplot2::element_blank(),
            axis.line.y.right = ggplot2::element_blank(),
            axis.line.x.bottom = ggplot2::element_blank(),
            axis.line.y.left = ggplot2::element_blank(),
            axis.ticks = ggplot2::element_blank(),
            axis.title = ggplot2::element_text(
                family = axis_title_family,
                color = axis_title_color,
                size = axis_title_size),
            axis.title.x = ggplot2::element_text(
                margin = ggplot2::margin(
                    t = 12,
                    r = 0,
                    b = 0,
                    l = 0, unit = "pt")),
            axis.title.x.top = ggplot2::element_text(
                margin = ggplot2::margin(
                    t = 0,
                    b = 12, unit = "pt")),
            axis.title.y = ggplot2::element_text(
                angle = 90,
                margin = ggplot2::margin(
                    t = 0,
                    r = 12,
                    b = 0,
                    l = 0, unit = "pt")),
            axis.title.y.right = ggplot2::element_text(
                angle = 90,
                margin = ggplot2::margin(
                    r = 0,
                    l = 12, unit = "pt")),
            axis.text = ggplot2::element_text(
                family = axis_text_family,
                color = axis_text_color,
                size = axis_text_size),
            axis.text.x = ggplot2::element_text(
                margin = ggplot2::margin(
                    t = 7,
                    r = 0,
                    b = 0,
                    l = 0, unit = "pt")),
            axis.text.x.top = ggplot2::element_text(
                margin = ggplot2::margin(
                    t = 0,
                    b = 7, unit = "pt")),
            axis.text.y = ggplot2::element_text(
                hjust = 1,
                margin = ggplot2::margin(
                    t = 0,
                    r = 7,
                    b = 0,
                    l = 0, unit = "pt")),
            axis.text.y.right = ggplot2::element_text(
                hjust = 0,
                margin = ggplot2::margin(
                    r = 0,
                    l = 7, unit = "pt")),
            legend.background = ggplot2::element_rect(
                color = NULL,
                fill = background_color,
                size = 0),
            legend.key = ggplot2::element_rect(
                color = background_color,
                fill = background_color),
            legend.title = ggplot2::element_text(
                family = legend_title_family,
                color = legend_title_color,
                face = "bold",
                size = legend_title_size),
            legend.text = ggplot2::element_text(
                family = legend_text_family,
                color = legend_text_color,
                size = legend_text_size),
            strip.background = ggplot2::element_rect(
                color = background_color,
                fill = background_color),
            strip.text = ggplot2::element_text(
                family = facet_title_family,
                color = facet_title_color,
                size = facet_title_size,
                face = "bold"))

    # Axes
    axis_line <- ggplot2::element_line(
        color = axis_line_color,
        size = 0.3,
        linetype = "solid")

    if (stringr::str_detect(axes, "t")) {
        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(
                axis.line.x.top = axis_line,
                axis.ticks.x.top = axis_line)
    }

    if (stringr::str_detect(axes, "r")) {
        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(
                axis.line.y.right = axis_line,
                axis.ticks.y.right = axis_line)
    }

    if (stringr::str_detect(axes, "b")) {
        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(
                axis.line.x.bottom = axis_line,
                axis.ticks.x.bottom = axis_line)
    }

    if (stringr::str_detect(axes, "l")) {
        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(
                axis.line.y.left = axis_line,
                axis.ticks.y.left = axis_line)
    }

    # Gridlines
    grid_line <- ggplot2::element_line(
        color = grid_color,
        size = 0.35,
        linetype = "solid")

    if (stringr::str_detect(grid, "v")) {
        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(panel.grid.major.x = grid_line)
    }

    if (stringr::str_detect(grid, "h")) {
        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(panel.grid.major.y = grid_line)
    }

    # Legend
    if (legend_position %in% c("top", "right", "bottom", "left", "none")) {

        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(legend.position = legend_position)

    } else if (legend_position == "top-right") {

        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(
                legend.position = "top",
                legend.direction = "horizontal",
                legend.justification = c(1,0))

    } else if (legend_position == "top-left") {

        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(
                legend.position = "top",
                legend.direction = "horizontal",
                legend.justification = c(0,1))

    } else if (legend_position == "bottom-right") {

        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(
                legend.position = "bottom",
                legend.direction = "horizontal",
                legend.justification = c(1,0))

    } else if (legend_position == "bottom-left") {

        theme_commonslib <- theme_commonslib %+replace%
            ggplot2::theme(
                legend.position = "bottom",
                legend.direction = "horizontal",
                legend.justification = c(0,1))

    } else {
        stop(paste(
            "The legend_position should be one of:",
            "\"top\", \"right\", \"bottom\", \"left\",",
            "\"top-right\", \"top-left\", \"bottom-right\", \"bottom-left\""))
    }

    theme_commonslib
}

# Function to add correctly aligned titles ------------------------------------

#' Add titles to a plot using the Commons Library style
#'
#' Use this function to add titles to a plot that uses \code{theme_commonslib}.
#' Using this functin to set the title and/or subtitle will ensure that title
#' elements are aligned with the left-hand edge of the y-axis text, rather than
#' the left-hand edge of the plotting area. This alignment is the preferred
#' form for the Commons Library style.
#'
#' To use the function, first create a plot using \code{theme_commonslib}
#' without setting the title or subtitle, capturing the plot object in a
#' variable. Pass the plot to \code{add_commonslib_titles} along with the title
#' and subtitle you want to use. This function will return the same plot with
#' titles added to the top and the correct spacing between the titles and the
#' rest of the plot area.
#'
#' Arguments are also available to set the font properties of the title and
#' subtitle elements of the plot. You should not normally need to use these
#' arguments but they are provided for unusual cases.
#'
#' @param plot A ggplot2 plot object to which titles will be added.
#' @param title A string containing the title to add to the plot. Use NULL if
#'   you do not want a title.
#' @param subtitle A string containing the subtitle to add to the plot. Use
#'   NULL if you do not want a subtitle.
#' @param title_family A string indicating the font-family to use for the
#'   title. The default is "National-LFSN Semibd".
#' @param subtitle_family A string indicating the font-family to use for the
#'   subtitle. The default is "National-LFSN Book".
#' @param title_size An integer indicating the font size to use for the title
#'   in points. The default is 18 points.
#' @param subtitle_size An integer indicating the font size to use for the
#'   subtitle in points. The default is 14 points.
#' @param title_color An RGB hex string indicating the color to use for the
#'   title. The default is "#006548".
#' @param subtitle_color An RGB hex string indicating the color to use for the
#'   subtitle. The default is "#006548".
#' @param background_color An RGB hex string indicating the color to use for
#'   the background. The default is "#f0eeed".
#' @return A copy of the input plot with a title and/or subtitle added.
#' @export

add_commonslib_titles <- function(
    plot,
    title = NULL,
    subtitle = NULL,
    title_family = "National-LFSN Semibd",
    subtitle_family = "National-LFSN Book",
    title_size = 18,
    subtitle_size = 14,
    title_color = "#006548",
    subtitle_color = "#006548",
    background_color = "#f0eeed") {

    # If no titles are provided, return the plot unmodified
    if (is.null(title) && is.null(subtitle)) return(plot)

    # Set the default title theme to the main theme plus any specified changes
    theme_titles <- theme_commonslib() + ggplot2::theme(
            plot.background = ggplot2::element_rect(
                fill = background_color),
            plot.title = ggplot2::element_text(
                family = title_family,
                size = title_size,
                color = title_color),
            plot.subtitle = ggplot2::element_text(
                family = subtitle_family,
                size = subtitle_size,
                color = subtitle_color))

    # If no subtitle is provided, adjust the title's bottom padding
    if (is.null(subtitle)) {
        theme_titles <- theme_titles + ggplot2::theme(
             plot.title = ggplot2::element_text(
                family = title_family,
                margin = ggplot2::margin(b = 18, unit = "pt")))
    }

    # Remove margin padding from the plot before re-adding with the titles
    plot +
        ggplot2::theme(plot.margin = ggplot2::margin(
                t = 0,
                r = 0,
                b = 0,
                l = 0, unit = "pt")) +
        patchwork::plot_annotation(
            title = title,
            subtitle = subtitle,
            theme = theme_titles)
}
