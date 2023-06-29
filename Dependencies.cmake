include(cmake/CPM.cmake)

# Done as a function so that updates to variables like
# CMAKE_CXX_FLAGS don't propagate out to other
# targets
function(myproject_setup_dependencies)

  # For each dependency, see if it's
  # already been provided to us by a parent project

  find_package(Catch2 QUIET)

  if(NOT TARGET Catch2::Catch2WithMain AND CATCH2_FOUND EQUAL 0)
    cpmaddpackage("gh:catchorg/Catch2@3.3.2")
  endif()

endfunction()
