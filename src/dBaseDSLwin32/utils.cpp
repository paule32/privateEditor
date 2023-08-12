// ----------------------------------------------------------------------------
// File   : utils.cpp
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "..\common.h"

// ----------------------------------------------------------------------------
// @brief  convert lower case letters to upper case letters in a given string.
// @param  const std::string& input - The input string.
// @return std::string
// ----------------------------------------------------------------------------
std::string StringToUpperCase(const std::string& input) {
    std::string result = input;
    std::transform(result.begin(), result.end(), result.begin(), ::toupper);
    return result;
}

