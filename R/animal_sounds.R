#' Print What the Animal Says
#' Print [rlang::abort()]
#' @param animal a single string
#' @param sound a single string
#'
#' @return Print
#' @export
#'
#' @examples
#' animal_sounds("dogs","woof")
animal_sounds <- function(animal, sound=NULL) {

    if (!rlang::is_character(animal, 1)) {
      cli::cli_abort("{.var animal} must be a single string!",
                     "i"="It was{.type(animal)} of length {length(animal)} instead.",
                    class="error_not_single_string")
    }
    if(is.null(sound))
  {
    return (paste0("The ", animal, " makes no sound."))
  }

    if (!rlang::is_character(sound, 1)) {
      cli::cli_abort("{.var sound} must be a single string!",
                     "i"="It was{.type(sound)} of length {length(sound)} instead.",
                     class="error_not_single_string")
    }

    paste0("The ", animal, " goes ", sound, "!")

}
