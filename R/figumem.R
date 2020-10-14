###################################################################


.onAttach <- function(libname, pkgname) {
 packageStartupMessage("Welcome to figumem!
Please note that upon loading the figumem-package, the png-data-files
containing the figumem-stimuli must be retrieved before any items can be produced.

In order to retrieve them from Github type

figumem_retrieve_online()

into the R console and press the return-button.
This takes a couple of seconds and requires an internet-connection!

Alternatively, if you already have the png-files saved locally on your computer
(for example, by having them downloaded from
https://www.frontiersin.org/articles/10.3389/fpsyg.2020.00945/full#supplementary-material)
you can set your working directory to the file containing these stimuli (in RStudio
this can be easily done by clicking 'Session -> Set Working Directory -> Choose Directory')
and then type

figumem_retrieve_offline()

into the R console and press the return-button.

Either way, the stimuli are read into a list called 'figumem_stimuli'
which will be displayed in the global environment.
This exact list (with this exact name!!!) is required for creating figumem-items!")
}

#' Retrieve the figumem stimuli from Github
#'
#' This function retrieves the png-data-files containing the figumem stimuli
#' from Github and loads them into a list called "figumem_stimuli". This list
#' is required for the production of figumem items, i. e. for the function
#' "figumem_item" to work. The first 20 elements of the list contain the 20 frames
#' that are used for items of the lowest difficulty. Elemts 21 to 40 contain the frames
#' for items of medium and the hardest difficulty. Elements 41 to 60 contain the emblems
#' in a small format for the lowest and medium difficulty. Elements 61 to 80 contain the emblems
#' in a small format for the hardest difficulty. Elements 81 to 100 contain the emblems
#' in a large format for the lowest and medium difficulty. Elements 101 to 120 contain the emblems
#' in a large format for the hardest difficulty.
#' The function will only work if the computer is connected to the internet!
#'
#' @return figumem_stimuli: A list of the figumem stimuli.
#' @export
    figumem_retrieve_online <- function(){
    print("Retrieving the stimuli from Github. This takes a minute. I will tell you when I am done.")
    figumem_stimuli <<- list(
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy1.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy2.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy3.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy4.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy5.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy6.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy7.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy8.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy9.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy10.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy11.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy12.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy13.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy14.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy15.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy16.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy17.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy18.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy19.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_easy20.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard1.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard2.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard3.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard4.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard5.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard6.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard7.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard8.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard9.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard10.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard11.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard12.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard13.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard14.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard15.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard16.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard17.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard18.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard19.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem/master/frame_medium_hard20.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium1.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium2.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium3.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium4.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium5.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium6.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium7.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium8.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium9.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium10.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium11.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium12.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium13.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium14.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium15.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium16.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium17.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium18.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium19.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_easy_medium20.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium1.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium2.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium3.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium4.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium5.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium6.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium7.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium8.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium9.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium10.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium11.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium12.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium13.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium14.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium15.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium16.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium17.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium18.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium19.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_easy_medium20.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard1.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard2.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard3.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard4.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard5.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard6.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard7.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard8.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard9.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard10.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard11.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard12.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard13.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard14.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard15.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard16.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard17.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard18.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard19.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_small_hard20.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard1.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard2.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard3.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard4.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard5.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard6.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard7.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard8.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard9.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard10.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard11.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard12.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard13.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard14.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard15.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard16.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard17.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard18.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard19.png"),
      magick::image_read("https://raw.githubusercontent.com/Jendryczko/figumem2/main/emblem_large_hard20.png")
    )
    print("Stimuli successfully retrieved. You may now use figumem.")
  }


#' Retrieve the figumem stimuli from the current working directory
#'
#' This function retrieves the png-data-files containing the figumem stimuli
#' from the current working directory and loads them into a list called "figumem_stimuli".
#' This list is required for the production of figumem items, i. e. for the function
#' "figumem_item" to work. The first 20 elements of the list contain the 20 frames
#' that are used for items of the lowest difficulty. Elemts 21 to 40 contain the frames
#' for items of medium and the hardest difficulty. Elements 41 to 60 contain the emblems
#' in a small format for the lowest and medium difficulty. Elements 61 to 80 contain the emblems
#' in a small format for the hardest difficulty. Elements 81 to 100 contain the emblems
#' in a large format for the lowest and medium difficulty. Elements 101 to 120 contain the emblems
#' in a large format for the hardest difficulty.
#' The function will only work if the current working directory contains the figumem stimuli
#' as png-data-files!
#'
#' @return figumem_stimuli: A list of the figumem stimuli.
#' @export
figumem_retrieve_offline <- function(){
    print("Just a second...")
    figumem_stimuli <<- list(
    magick::image_read("frame_easy1.png"),
    magick::image_read("frame_easy2.png"),
    magick::image_read("frame_easy3.png"),
    magick::image_read("frame_easy4.png"),
    magick::image_read("frame_easy5.png"),
    magick::image_read("frame_easy6.png"),
    magick::image_read("frame_easy7.png"),
    magick::image_read("frame_easy8.png"),
    magick::image_read("frame_easy9.png"),
    magick::image_read("frame_easy10.png"),
    magick::image_read("frame_easy11.png"),
    magick::image_read("frame_easy12.png"),
    magick::image_read("frame_easy13.png"),
    magick::image_read("frame_easy14.png"),
    magick::image_read("frame_easy15.png"),
    magick::image_read("frame_easy16.png"),
    magick::image_read("frame_easy17.png"),
    magick::image_read("frame_easy18.png"),
    magick::image_read("frame_easy19.png"),
    magick::image_read("frame_easy20.png"),
    magick::image_read("frame_medium_hard1.png"),
    magick::image_read("frame_medium_hard2.png"),
    magick::image_read("frame_medium_hard3.png"),
    magick::image_read("frame_medium_hard4.png"),
    magick::image_read("frame_medium_hard5.png"),
    magick::image_read("frame_medium_hard6.png"),
    magick::image_read("frame_medium_hard7.png"),
    magick::image_read("frame_medium_hard8.png"),
    magick::image_read("frame_medium_hard9.png"),
    magick::image_read("frame_medium_hard10.png"),
    magick::image_read("frame_medium_hard11.png"),
    magick::image_read("frame_medium_hard12.png"),
    magick::image_read("frame_medium_hard13.png"),
    magick::image_read("frame_medium_hard14.png"),
    magick::image_read("frame_medium_hard15.png"),
    magick::image_read("frame_medium_hard16.png"),
    magick::image_read("frame_medium_hard17.png"),
    magick::image_read("frame_medium_hard18.png"),
    magick::image_read("frame_medium_hard19.png"),
    magick::image_read("frame_medium_hard20.png"),
    magick::image_read("emblem_small_easy_medium1.png"),
    magick::image_read("emblem_small_easy_medium2.png"),
    magick::image_read("emblem_small_easy_medium3.png"),
    magick::image_read("emblem_small_easy_medium4.png"),
    magick::image_read("emblem_small_easy_medium5.png"),
    magick::image_read("emblem_small_easy_medium6.png"),
    magick::image_read("emblem_small_easy_medium7.png"),
    magick::image_read("emblem_small_easy_medium8.png"),
    magick::image_read("emblem_small_easy_medium9.png"),
    magick::image_read("emblem_small_easy_medium10.png"),
    magick::image_read("emblem_small_easy_medium11.png"),
    magick::image_read("emblem_small_easy_medium12.png"),
    magick::image_read("emblem_small_easy_medium13.png"),
    magick::image_read("emblem_small_easy_medium14.png"),
    magick::image_read("emblem_small_easy_medium15.png"),
    magick::image_read("emblem_small_easy_medium16.png"),
    magick::image_read("emblem_small_easy_medium17.png"),
    magick::image_read("emblem_small_easy_medium18.png"),
    magick::image_read("emblem_small_easy_medium19.png"),
    magick::image_read("emblem_small_easy_medium20.png"),
    magick::image_read("emblem_large_easy_medium1.png"),
    magick::image_read("emblem_large_easy_medium2.png"),
    magick::image_read("emblem_large_easy_medium3.png"),
    magick::image_read("emblem_large_easy_medium4.png"),
    magick::image_read("emblem_large_easy_medium5.png"),
    magick::image_read("emblem_large_easy_medium6.png"),
    magick::image_read("emblem_large_easy_medium7.png"),
    magick::image_read("emblem_large_easy_medium8.png"),
    magick::image_read("emblem_large_easy_medium9.png"),
    magick::image_read("emblem_large_easy_medium10.png"),
    magick::image_read("emblem_large_easy_medium11.png"),
    magick::image_read("emblem_large_easy_medium12.png"),
    magick::image_read("emblem_large_easy_medium13.png"),
    magick::image_read("emblem_large_easy_medium14.png"),
    magick::image_read("emblem_large_easy_medium15.png"),
    magick::image_read("emblem_large_easy_medium16.png"),
    magick::image_read("emblem_large_easy_medium17.png"),
    magick::image_read("emblem_large_easy_medium18.png"),
    magick::image_read("emblem_large_easy_medium19.png"),
    magick::image_read("emblem_large_easy_medium20.png"),
    magick::image_read("emblem_small_hard1.png"),
    magick::image_read("emblem_small_hard2.png"),
    magick::image_read("emblem_small_hard3.png"),
    magick::image_read("emblem_small_hard4.png"),
    magick::image_read("emblem_small_hard5.png"),
    magick::image_read("emblem_small_hard6.png"),
    magick::image_read("emblem_small_hard7.png"),
    magick::image_read("emblem_small_hard8.png"),
    magick::image_read("emblem_small_hard9.png"),
    magick::image_read("emblem_small_hard10.png"),
    magick::image_read("emblem_small_hard11.png"),
    magick::image_read("emblem_small_hard12.png"),
    magick::image_read("emblem_small_hard13.png"),
    magick::image_read("emblem_small_hard14.png"),
    magick::image_read("emblem_small_hard15.png"),
    magick::image_read("emblem_small_hard16.png"),
    magick::image_read("emblem_small_hard17.png"),
    magick::image_read("emblem_small_hard18.png"),
    magick::image_read("emblem_small_hard19.png"),
    magick::image_read("emblem_small_hard20.png"),
    magick::image_read("emblem_large_hard1.png"),
    magick::image_read("emblem_large_hard2.png"),
    magick::image_read("emblem_large_hard3.png"),
    magick::image_read("emblem_large_hard4.png"),
    magick::image_read("emblem_large_hard5.png"),
    magick::image_read("emblem_large_hard6.png"),
    magick::image_read("emblem_large_hard7.png"),
    magick::image_read("emblem_large_hard8.png"),
    magick::image_read("emblem_large_hard9.png"),
    magick::image_read("emblem_large_hard10.png"),
    magick::image_read("emblem_large_hard11.png"),
    magick::image_read("emblem_large_hard12.png"),
    magick::image_read("emblem_large_hard13.png"),
    magick::image_read("emblem_large_hard14.png"),
    magick::image_read("emblem_large_hard15.png"),
    magick::image_read("emblem_large_hard16.png"),
    magick::image_read("emblem_large_hard17.png"),
    magick::image_read("emblem_large_hard18.png"),
    magick::image_read("emblem_large_hard19.png"),
    magick::image_read("emblem_large_hard20.png")
  )
    print("Stimuli successfully retrieved. You may now use figumem.")
}


#' Retrieve the figumem stimuli from an arbitrary directory
#'
#' This function retrieves the png-data-files containing the figumem stimuli
#' from the file specified in the "file"-argument and loads them into a list called "figumem_stimuli".
#' The default file is the current working directory. In its default setting this function
#' thereby works in the same way as the "figumem_retrieve_offline"-function.
#' The list "figumem_stimuli" is required for the production of figumem items, i. e. for the function
#' "figumem_item" to work. The first 20 elements of the list contain the 20 frames
#' that are used for items of the lowest difficulty. Elemts 21 to 40 contain the frames
#' for items of medium and the hardest difficulty. Elements 41 to 60 contain the emblems
#' in a small format for the lowest and medium difficulty. Elements 61 to 80 contain the emblems
#' in a small format for the hardest difficulty. Elements 81 to 100 contain the emblems
#' in a large format for the lowest and medium difficulty. Elements 101 to 120 contain the emblems
#' in a large format for the hardest difficulty.
#'
#' @return figumem_stimuli: A list of the figumem stimuli.
#' @param file A path to the file containing the figumem stimuli as png-data-files. Default is the
#' current working directory.
#' @export
figumem_retrieve <- function(file = getwd()){
  print("Just a second...")
  figumem_stimuli <<- list(
    magick::image_read(paste0(file,"/frame_easy1.png")),
    magick::image_read(paste0(file,"/frame_easy2.png")),
    magick::image_read(paste0(file,"/frame_easy3.png")),
    magick::image_read(paste0(file,"/frame_easy4.png")),
    magick::image_read(paste0(file,"/frame_easy5.png")),
    magick::image_read(paste0(file,"/frame_easy6.png")),
    magick::image_read(paste0(file,"/frame_easy7.png")),
    magick::image_read(paste0(file,"/frame_easy8.png")),
    magick::image_read(paste0(file,"/frame_easy9.png")),
    magick::image_read(paste0(file,"/frame_easy10.png")),
    magick::image_read(paste0(file,"/frame_easy11.png")),
    magick::image_read(paste0(file,"/frame_easy12.png")),
    magick::image_read(paste0(file,"/frame_easy13.png")),
    magick::image_read(paste0(file,"/frame_easy14.png")),
    magick::image_read(paste0(file,"/frame_easy15.png")),
    magick::image_read(paste0(file,"/frame_easy16.png")),
    magick::image_read(paste0(file,"/frame_easy17.png")),
    magick::image_read(paste0(file,"/frame_easy18.png")),
    magick::image_read(paste0(file,"/frame_easy19.png")),
    magick::image_read(paste0(file,"/frame_easy20.png")),
    magick::image_read(paste0(file,"/frame_medium_hard1.png")),
    magick::image_read(paste0(file,"/frame_medium_hard2.png")),
    magick::image_read(paste0(file,"/frame_medium_hard3.png")),
    magick::image_read(paste0(file,"/frame_medium_hard4.png")),
    magick::image_read(paste0(file,"/frame_medium_hard5.png")),
    magick::image_read(paste0(file,"/frame_medium_hard6.png")),
    magick::image_read(paste0(file,"/frame_medium_hard7.png")),
    magick::image_read(paste0(file,"/frame_medium_hard8.png")),
    magick::image_read(paste0(file,"/frame_medium_hard9.png")),
    magick::image_read(paste0(file,"/frame_medium_hard10.png")),
    magick::image_read(paste0(file,"/frame_medium_hard11.png")),
    magick::image_read(paste0(file,"/frame_medium_hard12.png")),
    magick::image_read(paste0(file,"/frame_medium_hard13.png")),
    magick::image_read(paste0(file,"/frame_medium_hard14.png")),
    magick::image_read(paste0(file,"/frame_medium_hard15.png")),
    magick::image_read(paste0(file,"/frame_medium_hard16.png")),
    magick::image_read(paste0(file,"/frame_medium_hard17.png")),
    magick::image_read(paste0(file,"/frame_medium_hard18.png")),
    magick::image_read(paste0(file,"/frame_medium_hard19.png")),
    magick::image_read(paste0(file,"/frame_medium_hard20.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium1.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium2.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium3.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium4.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium5.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium6.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium7.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium8.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium9.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium10.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium11.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium12.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium13.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium14.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium15.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium16.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium17.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium18.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium19.png")),
    magick::image_read(paste0(file,"/emblem_small_easy_medium20.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium1.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium2.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium3.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium4.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium5.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium6.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium7.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium8.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium9.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium10.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium11.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium12.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium13.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium14.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium15.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium16.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium17.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium18.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium19.png")),
    magick::image_read(paste0(file,"/emblem_large_easy_medium20.png")),
    magick::image_read(paste0(file,"/emblem_small_hard1.png")),
    magick::image_read(paste0(file,"/emblem_small_hard2.png")),
    magick::image_read(paste0(file,"/emblem_small_hard3.png")),
    magick::image_read(paste0(file,"/emblem_small_hard4.png")),
    magick::image_read(paste0(file,"/emblem_small_hard5.png")),
    magick::image_read(paste0(file,"/emblem_small_hard6.png")),
    magick::image_read(paste0(file,"/emblem_small_hard7.png")),
    magick::image_read(paste0(file,"/emblem_small_hard8.png")),
    magick::image_read(paste0(file,"/emblem_small_hard9.png")),
    magick::image_read(paste0(file,"/emblem_small_hard10.png")),
    magick::image_read(paste0(file,"/emblem_small_hard11.png")),
    magick::image_read(paste0(file,"/emblem_small_hard12.png")),
    magick::image_read(paste0(file,"/emblem_small_hard13.png")),
    magick::image_read(paste0(file,"/emblem_small_hard14.png")),
    magick::image_read(paste0(file,"/emblem_small_hard15.png")),
    magick::image_read(paste0(file,"/emblem_small_hard16.png")),
    magick::image_read(paste0(file,"/emblem_small_hard17.png")),
    magick::image_read(paste0(file,"/emblem_small_hard18.png")),
    magick::image_read(paste0(file,"/emblem_small_hard19.png")),
    magick::image_read(paste0(file,"/emblem_small_hard20.png")),
    magick::image_read(paste0(file,"/emblem_large_hard1.png")),
    magick::image_read(paste0(file,"/emblem_large_hard2.png")),
    magick::image_read(paste0(file,"/emblem_large_hard3.png")),
    magick::image_read(paste0(file,"/emblem_large_hard4.png")),
    magick::image_read(paste0(file,"/emblem_large_hard5.png")),
    magick::image_read(paste0(file,"/emblem_large_hard6.png")),
    magick::image_read(paste0(file,"/emblem_large_hard7.png")),
    magick::image_read(paste0(file,"/emblem_large_hard8.png")),
    magick::image_read(paste0(file,"/emblem_large_hard9.png")),
    magick::image_read(paste0(file,"/emblem_large_hard10.png")),
    magick::image_read(paste0(file,"/emblem_large_hard11.png")),
    magick::image_read(paste0(file,"/emblem_large_hard12.png")),
    magick::image_read(paste0(file,"/emblem_large_hard13.png")),
    magick::image_read(paste0(file,"/emblem_large_hard14.png")),
    magick::image_read(paste0(file,"/emblem_large_hard15.png")),
    magick::image_read(paste0(file,"/emblem_large_hard16.png")),
    magick::image_read(paste0(file,"/emblem_large_hard17.png")),
    magick::image_read(paste0(file,"/emblem_large_hard18.png")),
    magick::image_read(paste0(file,"/emblem_large_hard19.png")),
    magick::image_read(paste0(file,"/emblem_large_hard20.png"))
  )
  print("Stimuli successfully retrieved. You may now use figumem.")
}





#' Create a figumem-item
#'
#' This function creates a figumem item. for more detailed information and examples please
#' refer to the figumem-manual available under
#' https://raw.githubusercontent.com/Jendryczko/figumem/master/figumem_Manual.pdf
#' @param objn The number of frame-emblem units to be used. Can be any natural number between
#' 1 and 20. Default is 20.
#' @param mode The answering format of the figumem item. Can be either "classic",
#' "classic_paper", "draw" or "draw_random". Default is "classic".
#' @param challenge The difficulty of the item. Must be either 1, 2 or 3. 1 is the lowest,
#' 3 is the highest difficulty. Default is 1.
#' @param seed The seed number for item production. Default is using a random seed number.
#' @param ntrys The maximum number of tries until an item is either successfully produced or
#' the production is cancelled. Default is 100.
#' @return A figumem item as a list containing images.
#' @export
figumem_item<- function (objn = 20, mode = "classic", challenge = 1, seed=sample(1:999999999,1), ntrys=100) {

  if (mode != "classic" & mode != "classic_paper" &  mode != "draw" & mode != "draw_random")  {
    stop("Only modes 'classic', 'classic_paper', 'draw' and 'draw_random'  are currently supported!")
  }

  if ((objn %in% c(1:20))==F)  {
    stop("'objn' must be a natural number between 1 and 20!")
  }

  if ((challenge %in% c(1:3))==F)  {
    stop("'challenge' must be a natural number between 1 and 3! Choose 1 for easy, 2 for medium, and 3 for hard difficulty.")
  }

  if (ntrys < 1)  {
    stop("'ntrys' must be a natural number greater than 1.")
  }


  if(challenge== 1){
    a_g<-c(figumem_stimuli[[1]],
           figumem_stimuli[[2]],
           figumem_stimuli[[3]],
           figumem_stimuli[[4]],
           figumem_stimuli[[5]],
           figumem_stimuli[[6]],
           figumem_stimuli[[7]],
           figumem_stimuli[[8]],
           figumem_stimuli[[9]],
           figumem_stimuli[[10]],
           figumem_stimuli[[11]],
           figumem_stimuli[[12]],
           figumem_stimuli[[13]],
           figumem_stimuli[[14]],
           figumem_stimuli[[15]],
           figumem_stimuli[[16]],
           figumem_stimuli[[17]],
           figumem_stimuli[[18]],
           figumem_stimuli[[19]],
           figumem_stimuli[[20]])
    i_k<-c(figumem_stimuli[[41]],
           figumem_stimuli[[42]],
           figumem_stimuli[[43]],
           figumem_stimuli[[44]],
           figumem_stimuli[[45]],
           figumem_stimuli[[46]],
           figumem_stimuli[[47]],
           figumem_stimuli[[48]],
           figumem_stimuli[[49]],
           figumem_stimuli[[50]],
           figumem_stimuli[[51]],
           figumem_stimuli[[52]],
           figumem_stimuli[[53]],
           figumem_stimuli[[54]],
           figumem_stimuli[[55]],
           figumem_stimuli[[56]],
           figumem_stimuli[[57]],
           figumem_stimuli[[58]],
           figumem_stimuli[[59]],
           figumem_stimuli[[60]])
    i_g<-c(figumem_stimuli[[61]],
           figumem_stimuli[[62]],
           figumem_stimuli[[63]],
           figumem_stimuli[[64]],
           figumem_stimuli[[65]],
           figumem_stimuli[[66]],
           figumem_stimuli[[67]],
           figumem_stimuli[[68]],
           figumem_stimuli[[69]],
           figumem_stimuli[[70]],
           figumem_stimuli[[71]],
           figumem_stimuli[[72]],
           figumem_stimuli[[73]],
           figumem_stimuli[[74]],
           figumem_stimuli[[75]],
           figumem_stimuli[[76]],
           figumem_stimuli[[77]],
           figumem_stimuli[[78]],
           figumem_stimuli[[79]],
           figumem_stimuli[[80]])
  }

  if(challenge== 2){
    a_g<-c(figumem_stimuli[[21]],
           figumem_stimuli[[22]],
           figumem_stimuli[[23]],
           figumem_stimuli[[24]],
           figumem_stimuli[[25]],
           figumem_stimuli[[26]],
           figumem_stimuli[[27]],
           figumem_stimuli[[28]],
           figumem_stimuli[[29]],
           figumem_stimuli[[30]],
           figumem_stimuli[[31]],
           figumem_stimuli[[32]],
           figumem_stimuli[[33]],
           figumem_stimuli[[34]],
           figumem_stimuli[[35]],
           figumem_stimuli[[36]],
           figumem_stimuli[[37]],
           figumem_stimuli[[38]],
           figumem_stimuli[[39]],
           figumem_stimuli[[40]])
    i_k<-c(figumem_stimuli[[41]],
           figumem_stimuli[[42]],
           figumem_stimuli[[43]],
           figumem_stimuli[[44]],
           figumem_stimuli[[45]],
           figumem_stimuli[[46]],
           figumem_stimuli[[47]],
           figumem_stimuli[[48]],
           figumem_stimuli[[49]],
           figumem_stimuli[[50]],
           figumem_stimuli[[51]],
           figumem_stimuli[[52]],
           figumem_stimuli[[53]],
           figumem_stimuli[[54]],
           figumem_stimuli[[55]],
           figumem_stimuli[[56]],
           figumem_stimuli[[57]],
           figumem_stimuli[[58]],
           figumem_stimuli[[59]],
           figumem_stimuli[[60]])
    i_g<-c(figumem_stimuli[[61]],
           figumem_stimuli[[62]],
           figumem_stimuli[[63]],
           figumem_stimuli[[64]],
           figumem_stimuli[[65]],
           figumem_stimuli[[66]],
           figumem_stimuli[[67]],
           figumem_stimuli[[68]],
           figumem_stimuli[[69]],
           figumem_stimuli[[70]],
           figumem_stimuli[[71]],
           figumem_stimuli[[72]],
           figumem_stimuli[[73]],
           figumem_stimuli[[74]],
           figumem_stimuli[[75]],
           figumem_stimuli[[76]],
           figumem_stimuli[[77]],
           figumem_stimuli[[78]],
           figumem_stimuli[[79]],
           figumem_stimuli[[80]])
  }

  if(challenge== 3){
    a_g<-c(figumem_stimuli[[21]],
           figumem_stimuli[[22]],
           figumem_stimuli[[23]],
           figumem_stimuli[[24]],
           figumem_stimuli[[25]],
           figumem_stimuli[[26]],
           figumem_stimuli[[27]],
           figumem_stimuli[[28]],
           figumem_stimuli[[29]],
           figumem_stimuli[[30]],
           figumem_stimuli[[31]],
           figumem_stimuli[[32]],
           figumem_stimuli[[33]],
           figumem_stimuli[[34]],
           figumem_stimuli[[35]],
           figumem_stimuli[[36]],
           figumem_stimuli[[37]],
           figumem_stimuli[[38]],
           figumem_stimuli[[39]],
           figumem_stimuli[[40]])
    i_k<-c(figumem_stimuli[[81]],
           figumem_stimuli[[82]],
           figumem_stimuli[[83]],
           figumem_stimuli[[84]],
           figumem_stimuli[[85]],
           figumem_stimuli[[86]],
           figumem_stimuli[[87]],
           figumem_stimuli[[88]],
           figumem_stimuli[[89]],
           figumem_stimuli[[90]],
           figumem_stimuli[[91]],
           figumem_stimuli[[92]],
           figumem_stimuli[[93]],
           figumem_stimuli[[94]],
           figumem_stimuli[[95]],
           figumem_stimuli[[96]],
           figumem_stimuli[[97]],
           figumem_stimuli[[98]],
           figumem_stimuli[[99]],
           figumem_stimuli[[100]])
    i_g<-c(figumem_stimuli[[101]],
           figumem_stimuli[[102]],
           figumem_stimuli[[103]],
           figumem_stimuli[[104]],
           figumem_stimuli[[105]],
           figumem_stimuli[[106]],
           figumem_stimuli[[107]],
           figumem_stimuli[[108]],
           figumem_stimuli[[109]],
           figumem_stimuli[[110]],
           figumem_stimuli[[111]],
           figumem_stimuli[[112]],
           figumem_stimuli[[113]],
           figumem_stimuli[[114]],
           figumem_stimuli[[115]],
           figumem_stimuli[[116]],
           figumem_stimuli[[117]],
           figumem_stimuli[[118]],
           figumem_stimuli[[119]],
           figumem_stimuli[[120]])
  }

  set.seed(seed)
  a<-sample(20,objn,replace=F)
  b<-sample(20,objn,replace=F)
  ob_list<-list()


  for ( i in 1:objn){
    ob_list[[i]]<-magick::image_border(magick::image_scale(magick::image_mosaic(c(a_g[a[i]],i_k[b[i]]), 'Add'), "300x300"),"white","20x20")
  }

  if(objn==20){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]],ob_list[[12]]))
    l4<-magick::image_append(c(ob_list[[13]],ob_list[[14]],ob_list[[15]],ob_list[[16]]))
    l5<-magick::image_append(c(ob_list[[17]],ob_list[[18]],ob_list[[19]],ob_list[[20]]))
    item_memo<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
  }

  if(objn==19){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]],ob_list[[12]]))
    l4<-magick::image_append(c(ob_list[[13]],ob_list[[14]],ob_list[[15]],ob_list[[16]]))
    l5<-magick::image_append(c(ob_list[[17]],ob_list[[18]],ob_list[[19]]))
    item_memo<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
  }

  if(objn==18){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]],ob_list[[12]]))
    l4<-magick::image_append(c(ob_list[[13]],ob_list[[14]],ob_list[[15]],ob_list[[16]]))
    l5<-magick::image_append(c(ob_list[[17]],ob_list[[18]]))
    item_memo<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
  }

  if(objn==17){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]],ob_list[[12]]))
    l4<-magick::image_append(c(ob_list[[13]],ob_list[[14]],ob_list[[15]],ob_list[[16]]))
    l5<-magick::image_append(c(ob_list[[17]]))
    item_memo<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
  }

  if(objn==16){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]],ob_list[[12]]))
    l4<-magick::image_append(c(ob_list[[13]],ob_list[[14]],ob_list[[15]],ob_list[[16]]))
    item_memo<-magick::image_append(c(l1,l2,l3,l4), stack=T)
  }

  if(objn==15){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]],ob_list[[12]]))
    l4<-magick::image_append(c(ob_list[[13]],ob_list[[14]],ob_list[[15]]))
    item_memo<-magick::image_append(c(l1,l2,l3,l4), stack=T)
  }

  if(objn==14){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]],ob_list[[12]]))
    l4<-magick::image_append(c(ob_list[[13]],ob_list[[14]]))
    item_memo<-magick::image_append(c(l1,l2,l3,l4), stack=T)
  }

  if(objn==13){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]],ob_list[[12]]))
    l4<-magick::image_append(c(ob_list[[13]]))
    item_memo<-magick::image_append(c(l1,l2,l3,l4), stack=T)
  }

  if(objn==12){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]],ob_list[[12]]))
    item_memo<-magick::image_append(c(l1,l2,l3), stack=T)
  }

  if(objn==11){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]],ob_list[[11]]))
    item_memo<-magick::image_append(c(l1,l2,l3), stack=T)
  }

  if(objn==10){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]],ob_list[[10]]))
    item_memo<-magick::image_append(c(l1,l2,l3), stack=T)
  }

  if(objn==9){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    l3<-magick::image_append(c(ob_list[[9]]))
    item_memo<-magick::image_append(c(l1,l2,l3), stack=T)
  }

  if(objn==8){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]],ob_list[[8]]))
    item_memo<-magick::image_append(c(l1,l2), stack=T)
  }

  if(objn==7){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]],ob_list[[7]]))
    item_memo<-magick::image_append(c(l1,l2), stack=T)
  }

  if(objn==6){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]],ob_list[[6]]))
    item_memo<-magick::image_append(c(l1,l2), stack=T)
  }

  if(objn==5){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    l2<-magick::image_append(c(ob_list[[5]]))
    item_memo<-magick::image_append(c(l1,l2), stack=T)
  }

  if(objn==4){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]],ob_list[[4]]))
    item_memo<-magick::image_append(c(l1), stack=T)
  }

  if(objn==3){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]],ob_list[[3]]))
    item_memo<-magick::image_append(c(l1), stack=T)
  }

  if(objn==2){
    l1<-magick::image_append(c(ob_list[[1]],ob_list[[2]]))
    item_memo<-magick::image_append(c(l1), stack=T)
  }

  if(objn==1){
    l1<-magick::image_append(c(ob_list[[1]]))
    item_memo<-magick::image_append(c(l1), stack=T)
  }

  item_memo<-magick::image_scale(item_memo, "640x615")


  if (mode == "classic") {
    opt_list<-list()
    discount<-rep(3,20)

    for (i in 1:objn){
      upper<-magick::image_scale(i_g[b[i]], "200x200")
      target<-magick::image_border(magick::image_scale(a_g[a[i]], "80x80"), "white","10x10")

      success <- F
      current_try <- 1
      while(!success & current_try <= ntrys){
        p<-sample(20,1)
        d1<-magick::image_border(magick::image_scale(a_g[p], "80x80"), "white","10x10")
        success<-(p != a[i] & discount[p] > 0)
        current_try <- current_try + 1
        if (current_try > ntrys) {
          warning(paste0("could not decide for first distractor of object ",i,". Returning NA. Try again!"))
          return(NA)
        }
      }

      discount[p]<-discount[p]-1

      success <- F
      current_try <- 1
      while(!success & current_try <= ntrys){
        q<-sample(20,1)
        d2<-magick::image_border(magick::image_scale(a_g[q], "80x80"), "white","10x10")
        success<-(  q != a[i]  & q != p & discount[q] > 0)
        current_try <- current_try + 1
        if (current_try > ntrys) {
          warning(paste0("could not decide for second distractor of object ",i,". Returning NA. Try again!"))
          return(NA)
        }
      }

      discount[q]<-discount[q]-1

      success <- F
      current_try <- 1
      while(!success & current_try <= ntrys){
        r <- sample(20,1)
        d3<-magick::image_border(magick::image_scale(a_g[r], "80x80"), "white","10x10")
        success<-( r != a[i] & r != p & r != q & discount[r] > 0)
        current_try <- current_try + 1
        if (current_try > ntrys) {
          warning(paste0("could not decide for third distractor of object ",i,". Returning NA. Try again!"))
          return(NA)
        }
      }

      discount[r]<-discount[r]-1

      lower<-magick::image_append(sample(c(target,d1,d2,d3)))
      opt_list[[i]]<-c(upper,target,d1,d2,d3)
    }
    item_list<-list(item_memo, opt_list)
    class(item_list) <- "figumem_classic"

    return(item_list)
  }



  if (mode == "classic_paper") {
    opt_list<-list()
    discount<-rep(3,20)

    for (i in 1:objn){
      upper<-magick::image_scale(i_g[b[i]], "200x200")
      target<-magick::image_scale(a_g[a[i]], "50x50")

      success <- F
      current_try <- 1
      while(!success & current_try <= ntrys){
        p<-sample(20,1)
        d1<-magick::image_scale(a_g[p], "50x50")
        success<-(p != a[i] & discount[p] > 0)
        current_try <- current_try + 1
        if (current_try > ntrys) {
          warning(paste0("could not decide for first distractor of object ",i,". Returning NA. Try again!"))
          return(NA)
        }
      }
      discount[p]<-discount[p]-1

      success <- F
      current_try <- 1
      while(!success & current_try <= ntrys){
        q<-sample(20,1)
        d2<-magick::image_scale(a_g[q], "50x50")
        success<-(  q != a[i]  & q != p & discount[q] > 0)
        current_try <- current_try + 1
        if (current_try > ntrys) {
          warning(paste0("could not decide for second distractor of object ",i,". Returning NA. Try again!"))
          return(NA)
        }
      }
      discount[q]<-discount[q]-1

      success <- F
      current_try <- 1
      while(!success & current_try <= ntrys){
        r <- sample(20,1)
        d3<-magick::image_scale(a_g[r], "50x50")
        success<-( r != a[i] & r != p & r != q & discount[r] > 0)
        current_try <- current_try + 1
        if (current_try > ntrys) {
          warning(paste0("could not decide for third distractor of object ",i,". Returning NA. Try again!"))
          return(NA)
        }
      }
      discount[r]<-discount[r]-1

      lower<-magick::image_append(sample(c(target,d1,d2,d3)))
      opt_list[[i]]<-magick::image_border(magick::image_append(c(upper,lower),stack=T), "white","20x20")
    }

    opt_list2<-sample(opt_list)

    if (objn == 20){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]],opt_list2[[12]]))
      li4<-magick::image_append(c(opt_list2[[13]],opt_list2[[14]],opt_list2[[15]],opt_list2[[16]]))
      li5<-magick::image_append(c(opt_list2[[17]],opt_list2[[18]],opt_list2[[19]],opt_list2[[20]]))
      item_answ<-magick::image_append(c(li1,li2,li3,li4,li5), stack=T)
    }

    if (objn == 19){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]],opt_list2[[12]]))
      li4<-magick::image_append(c(opt_list2[[13]],opt_list2[[14]],opt_list2[[15]],opt_list2[[16]]))
      li5<-magick::image_append(c(opt_list2[[17]],opt_list2[[18]],opt_list2[[19]]))
      item_answ<-magick::image_append(c(li1,li2,li3,li4,li5), stack=T)
    }

    if (objn == 18){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]],opt_list2[[12]]))
      li4<-magick::image_append(c(opt_list2[[13]],opt_list2[[14]],opt_list2[[15]],opt_list2[[16]]))
      li5<-magick::image_append(c(opt_list2[[17]],opt_list2[[18]]))
      item_answ<-magick::image_append(c(li1,li2,li3,li4,li5), stack=T)
    }

    if (objn == 17){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]],opt_list2[[12]]))
      li4<-magick::image_append(c(opt_list2[[13]],opt_list2[[14]],opt_list2[[15]],opt_list2[[16]]))
      li5<-magick::image_append(c(opt_list2[[17]]))
      item_answ<-magick::image_append(c(li1,li2,li3,li4,li5), stack=T)
    }

    if (objn == 16){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]],opt_list2[[12]]))
      li4<-magick::image_append(c(opt_list2[[13]],opt_list2[[14]],opt_list2[[15]],opt_list2[[16]]))
      item_answ<-magick::image_append(c(li1,li2,li3,li4), stack=T)
    }

    if (objn == 15){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]],opt_list2[[12]]))
      li4<-magick::image_append(c(opt_list2[[13]],opt_list2[[14]],opt_list2[[15]]))
      item_answ<-magick::image_append(c(li1,li2,li3,li4), stack=T)
    }

    if (objn == 14){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]],opt_list2[[12]]))
      li4<-magick::image_append(c(opt_list2[[13]],opt_list2[[14]]))
      item_answ<-magick::image_append(c(li1,li2,li3,li4), stack=T)
    }

    if (objn == 13){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]],opt_list2[[12]]))
      li4<-magick::image_append(c(opt_list2[[13]]))
      item_answ<-magick::image_append(c(li1,li2,li3,li4), stack=T)
    }

    if (objn == 12){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]],opt_list2[[12]]))
      item_answ<-magick::image_append(c(li1,li2,li3), stack=T)
    }

    if (objn == 11){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]],opt_list2[[11]]))
      item_answ<-magick::image_append(c(li1,li2,li3), stack=T)
    }

    if (objn == 10){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]],opt_list2[[10]]))
      item_answ<-magick::image_append(c(li1,li2,li3), stack=T)
    }

    if (objn == 9){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      li3<-magick::image_append(c(opt_list2[[9]]))
      item_answ<-magick::image_append(c(li1,li2,li3), stack=T)
    }

    if (objn == 8){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]],opt_list2[[8]]))
      item_answ<-magick::image_append(c(li1,li2), stack=T)
    }

    if (objn == 7){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]],opt_list2[[7]]))
      item_answ<-magick::image_append(c(li1,li2), stack=T)
    }

    if (objn == 6){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]],opt_list2[[6]]))
      item_answ<-magick::image_append(c(li1,li2), stack=T)
    }

    if (objn == 5){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      li2<-magick::image_append(c(opt_list2[[5]]))
      item_answ<-magick::image_append(c(li1,li2), stack=T)
    }

    if (objn == 4){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]],opt_list2[[4]]))
      item_answ<-magick::image_append(c(li1), stack=T)
    }

    if (objn == 3){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]],opt_list2[[3]]))
      item_answ<-magick::image_append(c(li1), stack=T)
    }

    if (objn == 2){
      li1<-magick::image_append(c(opt_list2[[1]],opt_list2[[2]]))
      item_answ<-magick::image_append(c(li1), stack=T)
    }

    if (objn == 1){
      li1<-magick::image_append(c(opt_list2[[1]]))
      item_answ<-magick::image_append(c(li1), stack=T)
    }

    complete_item <- list(item_memo, item_answ)
    class(complete_item) <- "figumem_classic_paper"
    return(complete_item)
  }



  if (mode == "draw") {
    dr_list<-list()
    for ( i in 1:objn){
      dr_list[[i]]<-magick::image_border(i_k[b[i]],color = "white", geometry = "20x20")
    }

    if(objn==20){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      l5<-magick::image_append(c(dr_list[[17]],dr_list[[18]],dr_list[[19]],dr_list[[20]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
    }

    if(objn==19){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      l5<-magick::image_append(c(dr_list[[17]],dr_list[[18]],dr_list[[19]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
    }

    if(objn==18){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      l5<-magick::image_append(c(dr_list[[17]],dr_list[[18]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
    }

    if(objn==17){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      l5<-magick::image_append(c(dr_list[[17]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
    }

    if(objn==16){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4), stack=T)
    }

    if(objn==15){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4), stack=T)
    }

    if(objn==14){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4), stack=T)
    }

    if(objn==13){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4), stack=T)
    }

    if(objn==12){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      item_answ<-magick::image_append(c(l1,l2,l3), stack=T)
    }

    if(objn==11){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]]))
      item_answ<-magick::image_append(c(l1,l2,l3), stack=T)
    }

    if(objn==10){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]]))
      item_answ<-magick::image_append(c(l1,l2,l3), stack=T)
    }

    if(objn==9){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]]))
      item_answ<-magick::image_append(c(l1,l2,l3), stack=T)
    }

    if(objn==8){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      item_answ<-magick::image_append(c(l1,l2), stack=T)
    }

    if(objn==7){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]]))
      item_answ<-magick::image_append(c(l1,l2), stack=T)
    }

    if(objn==6){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]]))
      item_answ<-magick::image_append(c(l1,l2), stack=T)
    }


    if(objn==5){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]]))
      item_answ<-magick::image_append(c(l1,l2), stack=T)
    }

    if(objn==4){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      item_answ<-magick::image_append(c(l1), stack=T)
    }

    if(objn==3){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]]))
      item_answ<-magick::image_append(c(l1), stack=T)
    }


    if(objn==2){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]]))
      item_answ<-magick::image_append(c(l1), stack=T)
    }

    if(objn==1){
      l1<-magick::image_append(c(dr_list[[1]]))
      item_answ<-magick::image_append(c(l1), stack=T)
    }

    item_answ<-magick::image_scale(item_answ, "640x615")

    complete_item <- list(item_memo, item_answ)
    class(complete_item) <- "figumem_draw"
    return(complete_item)
  }



  if (mode == "draw_random") {
    dr_list<-list()
    for ( i in 1:objn){
      dr_list[[i]]<-magick::image_border(i_k[b[i]],color = "white", geometry = "20x20")
    }
    dr_list <- sample(dr_list)

    if(objn==20){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      l5<-magick::image_append(c(dr_list[[17]],dr_list[[18]],dr_list[[19]],dr_list[[20]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
    }

    if(objn==19){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      l5<-magick::image_append(c(dr_list[[17]],dr_list[[18]],dr_list[[19]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
    }

    if(objn==18){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      l5<-magick::image_append(c(dr_list[[17]],dr_list[[18]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
    }

    if(objn==17){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      l5<-magick::image_append(c(dr_list[[17]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4,l5), stack=T)
    }

    if(objn==16){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]],dr_list[[16]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4), stack=T)
    }

    if(objn==15){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]],dr_list[[15]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4), stack=T)
    }

    if(objn==14){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]],dr_list[[14]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4), stack=T)
    }

    if(objn==13){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      l4<-magick::image_append(c(dr_list[[13]]))
      item_answ<-magick::image_append(c(l1,l2,l3,l4), stack=T)
    }

    if(objn==12){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]],dr_list[[12]]))
      item_answ<-magick::image_append(c(l1,l2,l3), stack=T)
    }

    if(objn==11){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]],dr_list[[11]]))
      item_answ<-magick::image_append(c(l1,l2,l3), stack=T)
    }

    if(objn==10){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]],dr_list[[10]]))
      item_answ<-magick::image_append(c(l1,l2,l3), stack=T)
    }

    if(objn==9){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      l3<-magick::image_append(c(dr_list[[9]]))
      item_answ<-magick::image_append(c(l1,l2,l3), stack=T)
    }

    if(objn==8){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]],dr_list[[8]]))
      item_answ<-magick::image_append(c(l1,l2), stack=T)
    }

    if(objn==7){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]],dr_list[[7]]))
      item_answ<-magick::image_append(c(l1,l2), stack=T)
    }

    if(objn==6){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]],dr_list[[6]]))
      item_answ<-magick::image_append(c(l1,l2), stack=T)
    }

    if(objn==5){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      l2<-magick::image_append(c(dr_list[[5]]))
      item_answ<-magick::image_append(c(l1,l2), stack=T)
    }

    if(objn==4){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]],dr_list[[4]]))
      item_answ<-magick::image_append(c(l1), stack=T)
    }

    if(objn==3){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]],dr_list[[3]]))
      item_answ<-magick::image_append(c(l1), stack=T)
    }

    if(objn==2){
      l1<-magick::image_append(c(dr_list[[1]],dr_list[[2]]))
      item_answ<-magick::image_append(c(l1), stack=T)
    }

    if(objn==1){
      l1<-magick::image_append(c(dr_list[[1]]))
      item_answ<-magick::image_append(c(l1), stack=T)
    }

    item_answ<-magick::image_scale(item_answ, "640x615")

    complete_item <- list(item_memo, item_answ)
    class(complete_item) <- "figumem_draw_random"
    return(complete_item)
  }
}



###############################################################

#' Save a figumem item
#'
#' This function saves a figumem item in either png-, jpg- or pdf-format.
#' For more detailed information and examples please refer to the figumem-manual available under
#' https://raw.githubusercontent.com/Jendryczko/figumem/master/figumem_Manual.pdf
#' @param item The figumem item to be saved. This argument has no default.
#' @param name The name for the figumem item. Default is "figural_memory_item". If you
#' want to save the item somewhere different than your current working directory you
#' can also specify the complete path here.
#' @param format The format of the figumem item. Must be either "png", "jpg" or "pdf". Default
#' is "png". "pdf" is only recommended for items with modes "classic_paper", "draw" and "draw_random".
#' @export
figumem_write <-function (item, name= "figural_memory_item", format = "png"){
  if(format != "png" & format != "jpg" & format != "pdf")
  {stop("Only 'png', 'jpg' and 'pdf' are supported formats.")}
  if(class(item) == "figumem_classic") {
    magick::image_write(item[[1]], path= paste0(name,"_display.",format), format = format)
    for(b in 1:length(item[[2]])){
      magick::image_write(item[[2]][[b]][1], path= paste0(name,"_stimulus_",b,"_emblem.",format), format = format)
      magick::image_write(item[[2]][[b]][2], path= paste0(name,"_stimulus_",b,"_target.",format), format = format)
      for(c in 1:3){
        magick::image_write(item[[2]][[b]][c+2], path= paste0(name,"_stimulus_",b,"_distractor_",c,".",format), format = format)
      }
    }
  }
  if(class(item) == "figumem_classic_paper" | class(item) == "figumem_draw" | class(item) == "figumem_draw_random"){
    magick::image_write(item[[1]], path = paste0(name,"_display.",format), format = format)
    magick::image_write(item[[2]], path = paste0(name,"_choices.",format), format = format)
  }
  if(class(item) != "figumem_classic" & class(item) != "figumem_classic_paper" & class(item) != "figumem_draw" & class(item) != "figumem_draw_random")
  {stop("Can only write items of classes 'figumem_classic', 'figumem_cassic_paper', 'figumem_draw' and 'figumem_draw_random'!")}
}










